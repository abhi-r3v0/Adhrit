.class public final Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;
.super Landroidx/work/ListenableWorker$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ListenableWorker$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field public final onPostMessage:Lo/PlaybackStateCompat$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 468
    sget-object v0, Lo/PlaybackStateCompat$Builder;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    invoke-direct {p0, v0}, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;-><init>(Lo/PlaybackStateCompat$Builder;)V

    return-void
.end method

.method private constructor <init>(Lo/PlaybackStateCompat$Builder;)V
    .locals 0

    .line 476
    invoke-direct {p0}, Landroidx/work/ListenableWorker$ICustomTabsCallback;-><init>()V

    .line 477
    iput-object p1, p0, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$Builder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 491
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 493
    :cond_1
    check-cast p1, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;

    .line 495
    iget-object v0, p0, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$Builder;

    iget-object p1, p1, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$Builder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 500
    const-class v0, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failure {mOutputData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/ListenableWorker$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
