.class public final Lo/setHostName$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setHostName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

.field private final arg$2:Lo/getPredecessorKey;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Lo/getPredecessorKey;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setHostName$onPostMessage;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

    iput-object p2, p0, Lo/setHostName$onPostMessage;->arg$2:Lo/getPredecessorKey;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Lo/getPredecessorKey;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/setHostName$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/setHostName$onPostMessage;-><init>(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Lo/getPredecessorKey;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/setHostName$onPostMessage;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;

    iget-object v1, p0, Lo/setHostName$onPostMessage;->arg$2:Lo/getPredecessorKey;

    invoke-static {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->lambda$onHeaders$0(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Lo/getPredecessorKey;)V

    return-void
.end method
