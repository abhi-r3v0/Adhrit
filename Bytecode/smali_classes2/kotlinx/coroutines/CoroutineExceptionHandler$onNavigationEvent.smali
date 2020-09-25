.class public final Lkotlinx/coroutines/CoroutineExceptionHandler$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isZombied$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/CoroutineExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/isZombied$extraCallback<",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineExceptionHandler$Key;",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "()V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final synthetic extraCallback:Lkotlinx/coroutines/CoroutineExceptionHandler$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lkotlinx/coroutines/CoroutineExceptionHandler$onNavigationEvent;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineExceptionHandler$onNavigationEvent;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler$onNavigationEvent;->extraCallback:Lkotlinx/coroutines/CoroutineExceptionHandler$onNavigationEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
