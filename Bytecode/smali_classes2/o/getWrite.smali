.class public Lo/getWrite;
.super Lo/setQueryActive;
.source ""

# interfaces
.implements Lo/addMerge;
.implements Lo/wireFormat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setQueryActive<",
        "TT;>;",
        "Lo/addMerge<",
        "TT;>;",
        "Lo/wireFormat;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0011\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000z2\u0008\u0012\u0004\u0012\u00028\u00000{2\u00060bj\u0002`cB\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J!\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ\u000f\u0010\u001d\u001a\u00020\nH\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\u0017\u0010 \u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0011\u0010&\u001a\u0004\u0018\u00010\u0008H\u0001\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010*\u001a\n\u0018\u00010(j\u0004\u0018\u0001`)H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010.\u001a\u00028\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0010\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010/\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008/\u0010\u001cJ\u001e\u00102\u001a\u00020\n2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\n00H\u0082\u0008\u00a2\u0006\u0004\u00082\u00103J8\u00109\u001a\u00020\n2\'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\n04j\u0002`7H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008;\u0010\u0018J8\u0010=\u001a\u00020<2\'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\n04j\u0002`7H\u0002\u00a2\u0006\u0004\u0008=\u0010>JB\u0010?\u001a\u00020\n2\'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\n04j\u0002`72\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010B\u001a\u00020AH\u0014\u00a2\u0006\u0004\u0008B\u0010CJ\u0017\u0010F\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0000\u00a2\u0006\u0004\u0008D\u0010EJ\u000f\u0010G\u001a\u00020\u000fH\u0001\u00a2\u0006\u0004\u0008G\u0010\u0018J:\u0010J\u001a\u00020\n2\u0006\u0010H\u001a\u00028\u00002!\u0010I\u001a\u001d\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\n04H\u0016\u00a2\u0006\u0004\u0008J\u0010KJ#\u0010M\u001a\u0004\u0018\u00010L2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008M\u0010NJ \u0010Q\u001a\u00020\n2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00028\u00000OH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Q\u0010\u000cJ\u000f\u0010R\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008R\u0010\u001cJ\u0011\u0010T\u001a\u0004\u0018\u00010\u0008H\u0010\u00a2\u0006\u0004\u0008S\u0010\'J\u000f\u0010U\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008U\u0010CJ\u000f\u0010V\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008V\u0010\u0018J#\u0010V\u001a\u0004\u0018\u00010\u00082\u0006\u0010H\u001a\u00028\u00002\u0008\u0010W\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008V\u0010XJ\u0019\u0010Z\u001a\u0004\u0018\u00010\u00082\u0006\u0010Y\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008Z\u0010[J\u000f\u0010\\\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\\\u0010\u0018J\u001b\u0010^\u001a\u00020\n*\u00020]2\u0006\u0010H\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008^\u0010_J\u001b\u0010`\u001a\u00020\n*\u00020]2\u0006\u0010Y\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008`\u0010aR\u001e\u0010f\u001a\n\u0018\u00010bj\u0004\u0018\u0001`c8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010eR\u001c\u0010h\u001a\u00020g8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010kR\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010l\u001a\u0004\u0008m\u0010nR\u0016\u0010o\u001a\u00020\u000f8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010\u0018R\u0016\u0010p\u001a\u00020\u000f8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010\u0018R\u0016\u0010q\u001a\u00020\u000f8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010\u0018R(\u0010w\u001a\u0004\u0018\u00010r2\u0008\u0010H\u001a\u0004\u0018\u00010r8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008s\u0010t\"\u0004\u0008u\u0010vR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00088@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010\'\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006y"
    }
    d2 = {
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "delegate",
        "",
        "resumeMode",
        "<init>",
        "(Lkotlin/coroutines/Continuation;I)V",
        "",
        "proposedUpdate",
        "",
        "alreadyResumedError",
        "(Ljava/lang/Object;)V",
        "",
        "cause",
        "",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "cancelLater",
        "state",
        "cancelResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "cancelResult",
        "checkCompleted",
        "()Z",
        "token",
        "completeResume",
        "detachChild$kotlinx_coroutines_core",
        "()V",
        "detachChild",
        "detachChildIfNonResuable",
        "mode",
        "dispatchResume",
        "(I)V",
        "Lkotlinx/coroutines/Job;",
        "parent",
        "getContinuationCancellationCause",
        "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;",
        "getResult",
        "()Ljava/lang/Object;",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getSuccessfulResult",
        "initCancellability",
        "Lkotlin/Function0;",
        "block",
        "invokeHandlerSafely",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "invokeOnCancellation",
        "(Lkotlin/jvm/functions/Function1;)V",
        "isReusable",
        "Lkotlinx/coroutines/CancelHandler;",
        "makeHandler",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;",
        "multipleHandlersError",
        "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V",
        "",
        "nameString",
        "()Ljava/lang/String;",
        "parentCancelled$kotlinx_coroutines_core",
        "(Ljava/lang/Throwable;)V",
        "parentCancelled",
        "resetState",
        "value",
        "onCancellation",
        "resume",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/CancelledContinuation;",
        "resumeImpl",
        "(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "setupCancellation",
        "takeState$kotlinx_coroutines_core",
        "takeState",
        "toString",
        "tryResume",
        "idempotent",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "exception",
        "tryResumeWithException",
        "(Ljava/lang/Throwable;)Ljava/lang/Object;",
        "trySuspend",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "resumeUndispatched",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V",
        "resumeUndispatchedWithException",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/coroutines/Continuation;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "isActive",
        "isCancelled",
        "isCompleted",
        "Lkotlinx/coroutines/DisposableHandle;",
        "getParentHandle",
        "()Lkotlinx/coroutines/DisposableHandle;",
        "setParentHandle",
        "(Lkotlinx/coroutines/DisposableHandle;)V",
        "parentHandle",
        "getState$kotlinx_coroutines_core",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlinx/coroutines/CancellableContinuation;"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final ICustomTabsCallback:Lo/isZombied;

.field public volatile _decision:I

.field public volatile _parentHandle:Ljava/lang/Object;

.field public volatile _state:Ljava/lang/Object;

.field final onNavigationEvent:Lo/setSessionPersistenceKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionPersistenceKey<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/getWrite;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lo/getWrite;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/getWrite;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lo/setSessionPersistenceKey;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setSessionPersistenceKey<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p2}, Lo/setQueryActive;-><init>(I)V

    iput-object p1, p0, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    .line 30
    invoke-interface {p1}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object p1

    iput-object p1, p0, Lo/getWrite;->ICustomTabsCallback:Lo/isZombied;

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lo/getWrite;->_decision:I

    .line 69
    sget-object p1, Lo/addOverwrite;->onPostMessage:Lo/addOverwrite;

    iput-object p1, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 1

    .line 335
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Already resumed, but proposed with update "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final ICustomTabsService()Z
    .locals 4

    .line 6076
    iget-object v0, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 5080
    instance-of v0, v0, Lo/calculateCountToPrune;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 133
    iget v2, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    if-eqz v2, :cond_0

    return v0

    .line 134
    :cond_0
    iget-object v2, p0, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    instance-of v3, v2, Lo/getMaxNumberOfQueriesToKeep;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    check-cast v2, Lo/getMaxNumberOfQueriesToKeep;

    if-nez v2, :cond_2

    return v0

    .line 135
    :cond_2
    move-object v3, p0

    check-cast v3, Lo/addMerge;

    invoke-virtual {v2, v3}, Lo/getMaxNumberOfQueriesToKeep;->ICustomTabsCallback(Lo/addMerge;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    if-nez v0, :cond_4

    .line 138
    invoke-virtual {p0, v2}, Lo/getWrite;->onNavigationEvent(Ljava/lang/Throwable;)Z

    :cond_4
    return v1
.end method

.method private final asInterface()Z
    .locals 4

    .line 88
    iget-object v0, p0, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    instance-of v1, v0, Lo/getMaxNumberOfQueriesToKeep;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lo/getMaxNumberOfQueriesToKeep;

    .line 1080
    iget-object v0, v0, Lo/getMaxNumberOfQueriesToKeep;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1081
    :cond_0
    instance-of v3, v0, Lo/getWrite;

    if-eqz v3, :cond_1

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private final extraCallback(Ljava/lang/Object;I)Lo/getCompleteWriteData;
    .locals 4

    .line 513
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 315
    instance-of v1, v0, Lo/calculateCountToPrune;

    if-eqz v1, :cond_4

    .line 316
    sget-object v1, Lo/getWrite;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15341
    invoke-direct {p0}, Lo/getWrite;->asInterface()Z

    move-result p1

    if-nez p1, :cond_2

    .line 16073
    iget-object p1, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    check-cast p1, Lo/setQueryInactive;

    if-eqz p1, :cond_1

    .line 15350
    invoke-interface {p1}, Lo/setQueryInactive;->onNavigationEvent()V

    .line 15351
    :cond_1
    sget-object p1, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast p1, Lo/setQueryInactive;

    .line 16074
    iput-object p1, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    .line 16306
    :cond_2
    invoke-direct {p0}, Lo/getWrite;->getInterfaceDescriptor()Z

    move-result p1

    if-nez p1, :cond_3

    .line 16308
    invoke-static {p0, p2}, Lo/extraCallback;->extraCallback(Lo/setQueryActive;I)V

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 321
    :cond_4
    instance-of v1, v0, Lo/getCompleteWriteData;

    if-eqz v1, :cond_5

    .line 327
    check-cast v0, Lo/getCompleteWriteData;

    .line 17053
    sget-object v1, Lo/getCompleteWriteData;->onPostMessage:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    .line 330
    :cond_5
    invoke-static {p1}, Lo/getWrite;->ICustomTabsCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final getInterfaceDescriptor()Z
    .locals 4

    .line 484
    :cond_0
    iget v0, p0, Lo/getWrite;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 220
    :cond_2
    sget-object v0, Lo/getWrite;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private static onNavigationEvent(Lo/onDisconnectSetValue;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/addWrites;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static onPostMessage(Lo/assertValidTrackedQuery;)Ljava/lang/Throwable;
    .locals 0

    .line 205
    invoke-interface {p0}, Lo/assertValidTrackedQuery;->asBinder()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method private final onPostMessage(I)V
    .locals 1

    .line 306
    invoke-direct {p0}, Lo/getWrite;->getInterfaceDescriptor()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-static {p0, p1}, Lo/extraCallback;->extraCallback(Lo/setQueryActive;I)V

    return-void
.end method

.method private final warmup()Z
    .locals 3

    .line 482
    :cond_0
    iget v0, p0, Lo/getWrite;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 210
    :cond_2
    sget-object v0, Lo/getWrite;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 515
    :cond_0
    iget-object p2, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 358
    instance-of v0, p2, Lo/calculateCountToPrune;

    if-eqz v0, :cond_1

    .line 361
    sget-object v0, Lo/getWrite;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p0}, Lo/getWrite;->onRelationshipValidationResult()V

    .line 363
    sget-object p1, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    return-object p1

    .line 365
    :cond_1
    instance-of v0, p2, Lo/resetTree;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 366
    check-cast p2, Lo/resetTree;

    iget-object v0, p2, Lo/resetTree;->onMessageChannelReady:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 367
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p2, Lo/resetTree;->onNavigationEvent:Ljava/lang/Object;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 368
    :cond_4
    :goto_1
    sget-object p1, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    return-object p1

    :cond_5
    return-object v1
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    .line 1076
    iget-object v0, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 78
    instance-of v0, v0, Lo/calculateCountToPrune;

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/Object;
    .locals 3

    .line 229
    invoke-virtual {p0}, Lo/getWrite;->onPostMessage()V

    .line 230
    invoke-direct {p0}, Lo/getWrite;->warmup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    return-object v0

    .line 11076
    :cond_0
    iget-object v0, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 233
    instance-of v1, v0, Lo/evaluate;

    if-eqz v1, :cond_3

    check-cast v0, Lo/evaluate;

    iget-object v0, v0, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    move-object v1, p0

    check-cast v1, Lo/setSessionPersistenceKey;

    .line 485
    invoke-static {}, Lo/getSnapshot;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lo/wireFormat;

    if-nez v2, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    check-cast v1, Lo/wireFormat;

    invoke-static {v0, v1}, Lo/wrapOnComplete;->onNavigationEvent(Ljava/lang/Throwable;Lo/wireFormat;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_2
    :goto_0
    throw v0

    .line 238
    :cond_3
    iget v1, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 12030
    iget-object v1, p0, Lo/getWrite;->ICustomTabsCallback:Lo/isZombied;

    .line 239
    sget-object v2, Lo/assertValidTrackedQuery;->onNavigationEvent:Lo/assertValidTrackedQuery$onNavigationEvent;

    check-cast v2, Lo/isZombied$extraCallback;

    invoke-interface {v1, v2}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v1

    check-cast v1, Lo/assertValidTrackedQuery;

    if-eqz v1, :cond_6

    .line 240
    invoke-interface {v1}, Lo/assertValidTrackedQuery;->ICustomTabsCallback()Z

    move-result v2

    if-nez v2, :cond_6

    .line 241
    invoke-interface {v1}, Lo/assertValidTrackedQuery;->asBinder()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1}, Lo/setQueryActive;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 243
    move-object v0, p0

    check-cast v0, Lo/setSessionPersistenceKey;

    .line 487
    invoke-static {}, Lo/getSnapshot;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v0, Lo/wireFormat;

    if-nez v2, :cond_4

    goto :goto_1

    .line 488
    :cond_4
    check-cast v0, Lo/wireFormat;

    invoke-static {v1, v0}, Lo/wrapOnComplete;->onNavigationEvent(Ljava/lang/Throwable;Lo/wireFormat;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_5
    :goto_1
    throw v1

    .line 12411
    :cond_6
    instance-of v1, v0, Lo/resetTree;

    if-eqz v1, :cond_7

    check-cast v0, Lo/resetTree;

    iget-object v0, v0, Lo/resetTree;->onNavigationEvent:Ljava/lang/Object;

    return-object v0

    .line 12412
    :cond_7
    instance-of v1, v0, Lo/recordEventRegistration;

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    return-object v0
.end method

.method public final asBinder()Lo/setSessionPersistenceKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setSessionPersistenceKey<",
            "TT;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 411
    instance-of v0, p1, Lo/resetTree;

    if-eqz v0, :cond_0

    check-cast p1, Lo/resetTree;

    iget-object p1, p1, Lo/resetTree;->onNavigationEvent:Ljava/lang/Object;

    return-object p1

    .line 412
    :cond_0
    instance-of v0, p1, Lo/recordEventRegistration;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final extraCallback()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/wireFormat;
    .locals 2

    .line 144
    iget-object v0, p0, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    instance-of v1, v0, Lo/wireFormat;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/wireFormat;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 151
    instance-of p1, p1, Lo/recordEventRegistration;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 153
    :try_start_0
    invoke-interface {p1, p2}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8030
    iget-object p2, p0, Lo/getWrite;->ICustomTabsCallback:Lo/isZombied;

    .line 465
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in cancellation handler for "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 463
    invoke-static {p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/onDisconnectSetValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 500
    :cond_0
    :goto_0
    iget-object v2, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 267
    instance-of v3, v2, Lo/addOverwrite;

    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    .line 13303
    instance-of v1, p1, Lo/isOverwrite;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lo/isOverwrite;

    goto :goto_1

    :cond_1
    new-instance v1, Lo/setComplete;

    invoke-direct {v1, p1}, Lo/setComplete;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v1, Lo/isOverwrite;

    .line 269
    :cond_2
    :goto_1
    sget-object v3, Lo/getWrite;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 271
    :cond_3
    instance-of v3, v2, Lo/isOverwrite;

    if-eqz v3, :cond_4

    invoke-static {p1, v2}, Lo/getWrite;->onNavigationEvent(Lo/onDisconnectSetValue;Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_4
    instance-of v1, v2, Lo/getCompleteWriteData;

    if-eqz v1, :cond_8

    .line 278
    move-object v1, v2

    check-cast v1, Lo/getCompleteWriteData;

    .line 14036
    sget-object v3, Lo/evaluate;->extraCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 278
    invoke-static {p1, v2}, Lo/getWrite;->onNavigationEvent(Lo/onDisconnectSetValue;Ljava/lang/Object;)V

    .line 283
    :cond_5
    :try_start_0
    instance-of v1, v2, Lo/evaluate;

    if-nez v1, :cond_6

    move-object v2, v0

    :cond_6
    check-cast v2, Lo/evaluate;

    if-eqz v2, :cond_7

    iget-object v0, v2, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 503
    :cond_7
    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 15030
    iget-object v0, p0, Lo/getWrite;->ICustomTabsCallback:Lo/isZombied;

    .line 508
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception in cancellation handler for "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 506
    invoke-static {v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Throwable;)V

    :cond_8
    return-void
.end method

.method public final onNavigationEvent()Lo/isZombied;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/getWrite;->ICustomTabsCallback:Lo/isZombied;

    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 394
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lo/purgeAllWrites;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 395
    :cond_2
    :goto_1
    iget p1, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    invoke-direct {p0, p1}, Lo/getWrite;->onPostMessage(I)V

    return-void
.end method

.method public final onNavigationEvent(Lo/zombifyForRemove;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/zombifyForRemove;",
            "TT;)V"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    instance-of v1, v0, Lo/getMaxNumberOfQueriesToKeep;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/getMaxNumberOfQueriesToKeep;

    if-eqz v0, :cond_1

    .line 400
    iget-object v2, v0, Lo/getMaxNumberOfQueriesToKeep;->onNavigationEvent:Lo/zombifyForRemove;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    iget p1, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    :goto_0
    invoke-direct {p0, p2, p1}, Lo/getWrite;->extraCallback(Ljava/lang/Object;I)Lo/getCompleteWriteData;

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Throwable;)Z
    .locals 5

    .line 470
    :cond_0
    iget-object v0, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 169
    instance-of v1, v0, Lo/calculateCountToPrune;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 171
    :cond_1
    new-instance v1, Lo/getCompleteWriteData;

    move-object v3, p0

    check-cast v3, Lo/setSessionPersistenceKey;

    instance-of v4, v0, Lo/isOverwrite;

    invoke-direct {v1, v3, p1, v4}, Lo/getCompleteWriteData;-><init>(Lo/setSessionPersistenceKey;Ljava/lang/Throwable;Z)V

    .line 172
    sget-object v3, Lo/getWrite;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_2

    .line 174
    :try_start_0
    check-cast v0, Lo/isOverwrite;

    invoke-virtual {v0, p1}, Lo/calcCompleteEventChildren;->extraCallback(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9030
    iget-object v0, p0, Lo/getWrite;->ICustomTabsCallback:Lo/isZombied;

    .line 477
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 475
    invoke-static {v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Lo/isZombied;Ljava/lang/Throwable;)V

    .line 9341
    :cond_2
    :goto_0
    invoke-direct {p0}, Lo/getWrite;->asInterface()Z

    move-result p1

    if-nez p1, :cond_4

    .line 10073
    iget-object p1, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    check-cast p1, Lo/setQueryInactive;

    if-eqz p1, :cond_3

    .line 9350
    invoke-interface {p1}, Lo/setQueryInactive;->onNavigationEvent()V

    .line 9351
    :cond_3
    sget-object p1, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast p1, Lo/setQueryInactive;

    .line 10074
    iput-object p1, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    .line 177
    :cond_4
    invoke-direct {p0, v2}, Lo/getWrite;->onPostMessage(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onPostMessage()V
    .locals 3

    .line 114
    invoke-direct {p0}, Lo/getWrite;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2073
    :cond_0
    iget-object v0, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/setQueryInactive;

    if-eqz v0, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    invoke-interface {v0}, Lo/setSessionPersistenceKey;->onNavigationEvent()Lo/isZombied;

    move-result-object v0

    sget-object v1, Lo/assertValidTrackedQuery;->onNavigationEvent:Lo/assertValidTrackedQuery$onNavigationEvent;

    check-cast v1, Lo/isZombied$extraCallback;

    invoke-interface {v0, v1}, Lo/isZombied;->get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/assertValidTrackedQuery;

    if-nez v0, :cond_2

    return-void

    .line 117
    :cond_2
    invoke-interface {v0}, Lo/assertValidTrackedQuery;->getInterfaceDescriptor()Z

    .line 120
    new-instance v1, Lo/calcEventCacheAfterServerOverwrite;

    invoke-direct {v1, v0, p0}, Lo/calcEventCacheAfterServerOverwrite;-><init>(Lo/assertValidTrackedQuery;Lo/getWrite;)V

    check-cast v1, Lo/unRecordEventRegistration;

    .line 458
    check-cast v1, Lo/onDisconnectSetValue;

    const/4 v2, 0x1

    .line 2353
    invoke-interface {v0, v2, v2, v1}, Lo/assertValidTrackedQuery;->onPostMessage(ZZLo/onDisconnectSetValue;)Lo/setQueryInactive;

    move-result-object v0

    .line 3074
    iput-object v0, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    .line 4076
    iget-object v1, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 3080
    instance-of v1, v1, Lo/calculateCountToPrune;

    xor-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 125
    invoke-direct {p0}, Lo/getWrite;->asInterface()Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    invoke-interface {v0}, Lo/setQueryInactive;->onNavigationEvent()V

    .line 127
    sget-object v0, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast v0, Lo/setQueryInactive;

    .line 5074
    iput-object v0, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 2

    .line 250
    move-object v0, p0

    check-cast v0, Lo/addMerge;

    .line 13014
    invoke-static {p1}, Lo/emptyWrite;->extraCallback(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 13015
    :cond_0
    check-cast v0, Lo/setSessionPersistenceKey;

    .line 13056
    invoke-static {}, Lo/getSnapshot;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, v0, Lo/wireFormat;

    if-nez p1, :cond_1

    goto :goto_0

    .line 13057
    :cond_1
    check-cast v0, Lo/wireFormat;

    invoke-static {v1, v0}, Lo/wrapOnComplete;->onNavigationEvent(Ljava/lang/Throwable;Lo/wireFormat;)Ljava/lang/Throwable;

    move-result-object v1

    .line 13015
    :cond_2
    :goto_0
    new-instance p1, Lo/evaluate;

    invoke-direct {p1, v1}, Lo/evaluate;-><init>(Ljava/lang/Throwable;)V

    .line 250
    :goto_1
    iget v0, p0, Lo/setQueryActive;->ICustomTabsCallback$Stub:I

    invoke-direct {p0, p1, v0}, Lo/getWrite;->extraCallback(Ljava/lang/Object;I)Lo/getCompleteWriteData;

    return-void
.end method

.method final onRelationshipValidationResult()V
    .locals 1

    .line 341
    invoke-direct {p0}, Lo/getWrite;->asInterface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18073
    iget-object v0, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/setQueryInactive;

    if-eqz v0, :cond_0

    .line 17350
    invoke-interface {v0}, Lo/setQueryInactive;->onNavigationEvent()V

    .line 17351
    :cond_0
    sget-object v0, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast v0, Lo/setQueryInactive;

    .line 18074
    iput-object v0, p0, Lo/getWrite;->_parentHandle:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final onTransact()Ljava/lang/Object;
    .locals 1

    .line 7076
    iget-object v0, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CancellableContinuation("

    .line 18421
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lo/getWrite;->onNavigationEvent:Lo/setSessionPersistenceKey;

    invoke-static {v1}, Lo/extraCallback;->ICustomTabsCallback(Lo/setSessionPersistenceKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19076
    iget-object v1, p0, Lo/getWrite;->_state:Ljava/lang/Object;

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20012
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
