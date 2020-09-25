.class final Lo/onLoadChildren$ICustomTabsCallback;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onLoadChildren;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/onLoadChildren$ICustomTabsCallback;


# instance fields
.field extraCallback:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lo/onLoadChildren$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/RatingCompat$StarStyle$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$onMessageChannelReady<",
            "Lo/onLoadChildren$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lo/onLoadChildren$ICustomTabsCallback;

    invoke-direct {v0}, Lo/onLoadChildren$ICustomTabsCallback;-><init>()V

    .line 164
    sput-object v0, Lo/onLoadChildren$ICustomTabsCallback;->onNavigationEvent:Lo/onLoadChildren$ICustomTabsCallback;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lo/onLoadChildren$ICustomTabsCallback;->extraCallback:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 172
    new-instance v0, Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/RatingCompat$StarStyle$onMessageChannelReady;-><init>(I)V

    iput-object v0, p0, Lo/onLoadChildren$ICustomTabsCallback;->onMessageChannelReady:Lo/RatingCompat$StarStyle$onMessageChannelReady;

    return-void
.end method

.method public static onMessageChannelReady()Lo/onLoadChildren$ICustomTabsCallback;
    .locals 1

    .line 168
    sget-object v0, Lo/onLoadChildren$ICustomTabsCallback;->onNavigationEvent:Lo/onLoadChildren$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "AsyncLayoutInflater"

    .line 1180
    :goto_0
    :try_start_0
    iget-object v1, p0, Lo/onLoadChildren$ICustomTabsCallback;->extraCallback:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onLoadChildren$onNavigationEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 1188
    :try_start_1
    iget-object v3, v1, Lo/onLoadChildren$onNavigationEvent;->onMessageChannelReady:Lo/onLoadChildren;

    iget-object v3, v3, Lo/onLoadChildren;->ICustomTabsCallback:Landroid/view/LayoutInflater;

    iget v4, v1, Lo/onLoadChildren$onNavigationEvent;->onPostMessage:I

    iget-object v5, v1, Lo/onLoadChildren$onNavigationEvent;->ICustomTabsCallback:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lo/onLoadChildren$onNavigationEvent;->extraCallback:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    .line 1192
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    :goto_1
    iget-object v3, v1, Lo/onLoadChildren$onNavigationEvent;->onMessageChannelReady:Lo/onLoadChildren;

    iget-object v3, v3, Lo/onLoadChildren;->onMessageChannelReady:Landroid/os/Handler;

    invoke-static {v3, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1196
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1183
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
