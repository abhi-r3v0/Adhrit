.class public abstract Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Lo/ah;Lo/ag$2;Lo/b;)Lo/ai;
    .locals 2

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 36
    new-instance p3, Lo/ad;

    invoke-direct {p3, p0, p1, p2}, Lo/ad;-><init>(Landroid/content/Context;Lo/ah;Lo/ag$2;)V

    return-object p3

    .line 38
    :cond_0
    new-instance v0, Lo/aa;

    invoke-direct {v0, p0, p1, p3, p2}, Lo/aa;-><init>(Landroid/content/Context;Lo/ah;Lo/b;Lo/ag$2;)V

    return-object v0
.end method


# virtual methods
.method abstract onPostMessage(Lo/disk;)Lo/a$a;
.end method
