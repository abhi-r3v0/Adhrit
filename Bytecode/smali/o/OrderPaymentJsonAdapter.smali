.class public final Lo/OrderPaymentJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OrderPaymentJsonAdapter$extraCallback;,
        Lo/OrderPaymentJsonAdapter$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/OrderPaymentJsonAdapter;

    invoke-direct {v0}, Lo/OrderPaymentJsonAdapter;-><init>()V

    sput-object v0, Lo/OrderPaymentJsonAdapter;->onMessageChannelReady:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 2000
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AssetPackBackgroundExecutor"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
