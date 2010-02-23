/*
 * Copyright (c) 1993 Ulrich Pegelow <pegelow@moorea.uni-muenster.de>
 * Copyright (c) 1993 Branko Lankester <branko@hacktic.nl>
 * Copyright (c) 1993, 1994, 1995, 1996 Rick Sladkey <jrs@world.std.com>
 * Copyright (c) 1996-1999 Wichert Akkerman <wichert@cistron.nl>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *	$Id: ipc.c,v 1.7 2004/04/16 21:48:40 roland Exp $
 */

#include "defs.h"

#if defined(LINUX) || defined(SUNOS4) || defined(FREEBSD)

# ifdef HAVE_MQUEUE_H
#  include <mqueue.h>
# endif

#include <fcntl.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/msg.h>
#include <sys/shm.h>

#ifndef MSG_STAT
#define MSG_STAT 11
#endif
#ifndef MSG_INFO
#define MSG_INFO 12
#endif
#ifndef SHM_STAT
#define SHM_STAT 13
#endif
#ifndef SHM_INFO
#define SHM_INFO 14
#endif
#ifndef SEM_STAT
#define SEM_STAT 18
#endif
#ifndef SEM_INFO
#define SEM_INFO 19
#endif

#if defined LINUX && !defined IPC_64
# define IPC_64 0x100
#endif

extern struct xlat openmodes[];
extern void printsigevent(struct tcb *tcp, long arg);

static struct xlat msgctl_flags[] = {
	{ IPC_RMID,	"IPC_RMID"	},
	{ IPC_SET,	"IPC_SET"	},
	{ IPC_STAT,	"IPC_STAT"	},
#ifdef LINUX
	{ IPC_INFO,	"IPC_INFO"	},
	{ MSG_STAT,	"MSG_STAT"	},
	{ MSG_INFO,	"MSG_INFO"	},
#endif /* LINUX */
	{ 0,		NULL		},
};

static struct xlat semctl_flags[] = {
	{ IPC_RMID,	"IPC_RMID"	},
	{ IPC_SET,	"IPC_SET"	},
	{ IPC_STAT,	"IPC_STAT"	},
#ifdef LINUX
	{ IPC_INFO,	"IPC_INFO"	},
	{ SEM_STAT,	"SEM_STAT"	},
	{ SEM_INFO,	"SEM_INFO"	},
#endif /* LINUX */
	{ GETPID,	"GETPID"	},
	{ GETVAL,	"GETVAL"	},
	{ GETALL,	"GETALL"	},
	{ GETNCNT,	"GETNCNT"	},
	{ GETZCNT,	"GETZCNT"	},
	{ SETVAL,	"SETVAL"	},
	{ SETALL,	"SETALL"	},
	{ 0,		NULL		},
};

static struct xlat shmctl_flags[] = {
	{ IPC_RMID,	"IPC_RMID"	},
	{ IPC_SET,	"IPC_SET"	},
	{ IPC_STAT,	"IPC_STAT"	},
#ifdef LINUX
	{ IPC_INFO,	"IPC_INFO"	},
	{ SHM_STAT,	"SHM_STAT"	},
	{ SHM_INFO,	"SHM_INFO"	},
#endif /* LINUX */
#ifdef SHM_LOCK
	{ SHM_LOCK,	"SHM_LOCK"	},
#endif
#ifdef SHM_UNLOCK
	{ SHM_UNLOCK,	"SHM_UNLOCK"	},
#endif
	{ 0,		NULL		},
};

static struct xlat resource_flags[] = {
	{ IPC_CREAT,	"IPC_CREAT"	},
	{ IPC_EXCL,	"IPC_EXCL"	},
	{ IPC_NOWAIT,	"IPC_NOWAIT"	},
#ifdef SHM_HUGETLB
	{ SHM_HUGETLB,	"SHM_HUGETLB"	},
#endif
	{ 0,		NULL		},
};

static struct xlat shm_flags[] = {
#ifdef LINUX
	{ SHM_REMAP,	"SHM_REMAP"	},
#endif /* LINUX */
	{ SHM_RDONLY,	"SHM_RDONLY"	},
	{ SHM_RND,	"SHM_RND"	},
	{ 0,		NULL		},
};

static struct xlat msg_flags[] = {
	{ MSG_NOERROR,	"MSG_NOERROR"	},
#ifdef LINUX
	{ MSG_EXCEPT,	"MSG_EXCEPT"	},
#endif /* LINUX */
	{ IPC_NOWAIT,	"IPC_NOWAIT"	},
	{ 0,		NULL		},
};

int sys_msgget(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		if (tcp->u_arg[0])
			tprintf("%lu", tcp->u_arg[0]);
		else
			tprintf("IPC_PRIVATE");
		tprintf(", ");
		if (printflags(resource_flags, tcp->u_arg[1] & ~0777) != 0)
			tprintf("|");
		tprintf("%#lo", tcp->u_arg[1] & 0777);
	}
	return 0;
}

#ifdef IPC_64
# define PRINTCTL(flagset, arg, dflt) \
	if ((arg) & IPC_64) tprintf("IPC_64|"); \
	printxval((flagset), (arg) &~ IPC_64, dflt)
#else
# define PRINTCTL printxval
#endif

int sys_msgctl(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		tprintf("%lu, ", tcp->u_arg[0]);
		PRINTCTL(msgctl_flags, tcp->u_arg[1], "MSG_???");
#ifdef LINUX
		tprintf(", %#lx", tcp->u_arg[3]);
#else /* !LINUX */
		tprintf(", %#lx", tcp->u_arg[2]);
#endif /* !LINUX */
	}
	return 0;
}

int sys_msgsnd(tcp)
struct tcb *tcp;
{
	long mtype;

	if (entering(tcp)) {
		tprintf("%lu", tcp->u_arg[0]);
#ifdef LINUX
		umove(tcp, tcp->u_arg[3], &mtype);
		tprintf(", {%lu, ", mtype);
		printstr(tcp, tcp->u_arg[3] + sizeof(long),
			tcp->u_arg[1]);
		tprintf("}, %lu", tcp->u_arg[1]);
		tprintf(", ");
		if (printflags(msg_flags, tcp->u_arg[2]) == 0)
			tprintf("0");
#else /* !LINUX */
		umove(tcp, tcp->u_arg[1], &mtype);
		tprintf(", {%lu, ", mtype);
		printstr(tcp, tcp->u_arg[1] + sizeof(long),
			tcp->u_arg[2]);
		tprintf("}, %lu", tcp->u_arg[2]);
		tprintf(", ");
		if (printflags(msg_flags, tcp->u_arg[3]) == 0)
			tprintf("0");
#endif /* !LINUX */
	}
	return 0;
}

int sys_msgrcv(tcp)
struct tcb *tcp;
{
	long mtype;
#ifdef LINUX
	struct ipc_wrapper {
		struct msgbuf *msgp;
		long msgtyp;
	} tmp;
#endif


	if (exiting(tcp)) {
		tprintf("%lu", tcp->u_arg[0]);
#ifdef LINUX
		umove(tcp, tcp->u_arg[3], &tmp);
		umove(tcp, (long) tmp.msgp, &mtype);
		tprintf(", {%lu, ", mtype);
		printstr(tcp, (long) (tmp.msgp) + sizeof(long),
			tcp->u_arg[1]);
		tprintf("}, %lu", tcp->u_arg[1]);
		tprintf(", %ld", tmp.msgtyp);
		tprintf(", ");
		if (printflags(msg_flags, tcp->u_arg[2]) == 0)
			tprintf("0");
#else /* !LINUX */
		umove(tcp, tcp->u_arg[1], &mtype);
		tprintf(", {%lu, ", mtype);
		printstr(tcp, tcp->u_arg[1] + sizeof(long),
			tcp->u_arg[2]);
		tprintf("}, %lu", tcp->u_arg[2]);
		tprintf(", %ld", tcp->u_arg[3]);
		tprintf(", ");
		if (printflags(msg_flags, tcp->u_arg[4]) == 0)
			tprintf("0");
#endif /* !LINUX */
	}
	return 0;
}

int sys_semop(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		tprintf("%lu", tcp->u_arg[0]);
#ifdef LINUX
		tprintf(", %#lx", tcp->u_arg[3]);
		tprintf(", %lu", tcp->u_arg[1]);
#else /* !LINUX */
		tprintf(", %#lx", tcp->u_arg[1]);
		tprintf(", %lu", tcp->u_arg[2]);
#endif /* !LINUX */
	}
	return 0;
}

#ifdef LINUX
int sys_semtimedop(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		tprintf("%lu", tcp->u_arg[0]);
		tprintf(", %#lx", tcp->u_arg[3]);
		tprintf(", %lu, ", tcp->u_arg[1]);
		printtv(tcp, tcp->u_arg[5]);
	}
	return 0;
}
#endif

int sys_semget(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		if (tcp->u_arg[0])
			tprintf("%lu", tcp->u_arg[0]);
		else
			tprintf("IPC_PRIVATE");
		tprintf(", %lu", tcp->u_arg[1]);
		tprintf(", ");
		if (printflags(resource_flags, tcp->u_arg[2] & ~0777) != 0)
			tprintf("|");
		tprintf("%#lo", tcp->u_arg[2] & 0777);
	}
	return 0;
}

int sys_semctl(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		tprintf("%lu", tcp->u_arg[0]);
		tprintf(", %lu, ", tcp->u_arg[1]);
		PRINTCTL(semctl_flags, tcp->u_arg[2], "SEM_???");
		tprintf(", %#lx", tcp->u_arg[3]);
	}
	return 0;
}

int sys_shmget(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		if (tcp->u_arg[0])
			tprintf("%lu", tcp->u_arg[0]);
		else
			tprintf("IPC_PRIVATE");
		tprintf(", %lu", tcp->u_arg[1]);
		tprintf(", ");
		if (printflags(resource_flags, tcp->u_arg[2] & ~0777) != 0)
			tprintf("|");
		tprintf("%#lo", tcp->u_arg[2] & 0777);
	}
	return 0;
}

int sys_shmctl(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		tprintf("%lu, ", tcp->u_arg[0]);
		PRINTCTL(shmctl_flags, tcp->u_arg[1], "SHM_???");
#ifdef LINUX
		tprintf(", %#lx", tcp->u_arg[3]);
#else /* !LINUX */
		tprintf(", %#lx", tcp->u_arg[2]);
#endif /* !LINUX */
	}
	return 0;
}

int sys_shmat(tcp)
struct tcb *tcp;
{
#ifdef LINUX
	unsigned long raddr;
#endif /* LINUX */

	if (exiting(tcp)) {
		tprintf("%lu", tcp->u_arg[0]);
#ifdef LINUX
		tprintf(", %#lx", tcp->u_arg[3]);
		tprintf(", ");
		if (printflags(shm_flags, tcp->u_arg[1]) == 0)
			tprintf("0");
#else /* !LINUX */
		tprintf(", %#lx", tcp->u_arg[1]);
		tprintf(", ");
		if (printflags(shm_flags, tcp->u_arg[2]) == 0)
			tprintf("0");
#endif /* !LINUX */
		if (syserror(tcp))
			return 0;
#ifdef LINUX
		if (umove(tcp, tcp->u_arg[2], &raddr) < 0)
			return RVAL_NONE;
		tcp->u_rval = raddr;
#endif /* LINUX */
		return RVAL_HEX;
	}
	return 0;
}

int sys_shmdt(tcp)
struct tcb *tcp;
{
	if (entering(tcp))
#ifdef LINUX
		tprintf("%#lx", tcp->u_arg[3]);
#else /* !LINUX */
		tprintf("%#lx", tcp->u_arg[0]);
#endif /* !LINUX */
	return 0;
}

#endif /* defined(LINUX) || defined(SUNOS4) || defined(FREEBSD) */

#ifdef LINUX
int sys_mq_open(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		printpath(tcp, tcp->u_arg[0]);
		tprintf(", ");
		/* flags */
		printflags(openmodes, tcp->u_arg[1] + 1);
		if (tcp->u_arg[1] & O_CREAT) {
# ifndef HAVE_MQUEUE_H
			tprintf(", %lx", tcp->u_arg[2]);
# else
			struct mq_attr attr;
			/* mode */
			tprintf(", %#lo, ", tcp->u_arg[2]);
			if (umove(tcp, tcp->u_arg[3], &attr) < 0)
				tprintf("{ ??? }");
			else
				tprintf("{mq_maxmsg=%ld, mq_msgsize=%ld}",
					attr.mq_maxmsg, attr.mq_msgsize);
# endif
		}
	}
	return 0;
}

int sys_mq_timedsend(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		tprintf("%ld, ", tcp->u_arg[0]);
		printstr(tcp, tcp->u_arg[1], tcp->u_arg[2]);
		tprintf(", %lu, %ld, ", tcp->u_arg[2], tcp->u_arg[3]);
		printtv(tcp, tcp->u_arg[4]);
	}
	return 0;
}

int sys_mq_timedreceive(tcp)
struct tcb *tcp;
{
	if (entering(tcp))
		tprintf("%ld, ", tcp->u_arg[0]);
	else {
		printstr(tcp, tcp->u_arg[1], tcp->u_arg[2]);
		tprintf(", %lu, %ld, ", tcp->u_arg[2], tcp->u_arg[3]);
		printtv(tcp, tcp->u_arg[4]);
	}
	return 0;
}

int sys_mq_notify(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		tprintf("%ld, ", tcp->u_arg[0]);
		printsigevent(tcp, tcp->u_arg[1]);
	}
	return 0;
}

static void printmqattr(tcp, addr)
struct tcb *tcp;
long addr;
{
	if (addr == 0)
		tprintf("NULL");
	else {
# ifndef HAVE_MQUEUE_H
		tprintf("%#lx", addr);
# else
		struct mq_attr attr;
		if (umove(tcp, addr, &attr) < 0) {
			tprintf("{...}");
			return;
		}
		tprintf("{mq_flags=");
		printflags(openmodes, attr.mq_flags + 1);
		tprintf(", mq_maxmsg=%ld, mq_msgsize=%ld, mq_curmsg=%ld}",
			attr.mq_maxmsg, attr.mq_msgsize, attr.mq_curmsgs);
# endif
	}
}

int sys_mq_getsetattr(tcp)
struct tcb *tcp;
{
	if (entering(tcp)) {
		tprintf("%ld, ", tcp->u_arg[0]);
		printmqattr(tcp, tcp->u_arg[1]);
		tprintf(", ");
	} else
		printmqattr(tcp, tcp->u_arg[2]);
	return 0;
}
#endif
