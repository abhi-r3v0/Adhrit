.class public final Lo/onDestroy$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onDestroy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public extraCallback:Ljava/lang/String;

.field public onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 373
    :cond_0
    instance-of v0, p1, Lo/onDestroy$extraCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 375
    :cond_1
    check-cast p1, Lo/onDestroy$extraCallback;

    .line 377
    iget-object v0, p0, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    iget-object v2, p1, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v0, v2, :cond_2

    return v1

    .line 378
    :cond_2
    iget-object v0, p0, Lo/onDestroy$extraCallback;->extraCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/onDestroy$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 383
    iget-object v0, p0, Lo/onDestroy$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 384
    iget-object v1, p0, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
