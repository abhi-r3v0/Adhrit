.class public final Lo/getByPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getByPosition$extraCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:J

.field public final ICustomTabsCallback$Stub:Lo/getStrokeAlpha;

.field public final asBinder:Lo/recycleTile;

.field public final asInterface:J

.field public final extraCallback:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final newSession:Landroid/content/Context;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:I

.field public final onPostMessage:J

.field public final onRelationshipValidationResult:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field public final onTransact:Lo/invalidateAnchorPositionInfo;

.field public final warmup:Z


# direct methods
.method protected constructor <init>(Lo/getByPosition$extraCallback;)V
    .locals 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    iget-object v0, p1, Lo/getByPosition$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lo/getByPosition;->newSession:Landroid/content/Context;

    .line 2139
    iget-object v0, p1, Lo/getByPosition$extraCallback;->onPostMessage:Lo/setPivotX;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lo/getByPosition;->newSession:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    .line 3139
    iget-object v0, p1, Lo/getByPosition$extraCallback;->onPostMessage:Lo/setPivotX;

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lo/getByPosition;->newSession:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lo/getByPosition$5;

    invoke-direct {v0, p0}, Lo/getByPosition$5;-><init>(Lo/getByPosition;)V

    .line 4139
    iput-object v0, p1, Lo/getByPosition$extraCallback;->onPostMessage:Lo/setPivotX;

    .line 5139
    :cond_2
    iget v0, p1, Lo/getByPosition$extraCallback;->extraCallback:I

    .line 55
    iput v0, p0, Lo/getByPosition;->onNavigationEvent:I

    .line 6139
    iget-object v0, p1, Lo/getByPosition$extraCallback;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 56
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/getByPosition;->onMessageChannelReady:Ljava/lang/String;

    .line 7139
    iget-object v0, p1, Lo/getByPosition$extraCallback;->onPostMessage:Lo/setPivotX;

    if-eqz v0, :cond_4

    .line 57
    check-cast v0, Lo/setPivotX;

    iput-object v0, p0, Lo/getByPosition;->extraCallback:Lo/setPivotX;

    .line 8139
    iget-wide v3, p1, Lo/getByPosition$extraCallback;->ICustomTabsCallback:J

    .line 58
    iput-wide v3, p0, Lo/getByPosition;->ICustomTabsCallback:J

    .line 9139
    iget-wide v3, p1, Lo/getByPosition$extraCallback;->onMessageChannelReady:J

    .line 59
    iput-wide v3, p0, Lo/getByPosition;->onPostMessage:J

    .line 10139
    iget-wide v3, p1, Lo/getByPosition$extraCallback;->onRelationshipValidationResult:J

    .line 60
    iput-wide v3, p0, Lo/getByPosition;->asInterface:J

    .line 11139
    iget-object p1, p1, Lo/getByPosition$extraCallback;->onTransact:Lo/getStrokeAlpha;

    if-eqz p1, :cond_3

    .line 62
    check-cast p1, Lo/getStrokeAlpha;

    iput-object p1, p0, Lo/getByPosition;->ICustomTabsCallback$Stub:Lo/getStrokeAlpha;

    .line 65
    invoke-static {}, Lo/removeTile;->extraCallback()Lo/removeTile;

    move-result-object p1

    .line 66
    iput-object p1, p0, Lo/getByPosition;->asBinder:Lo/recycleTile;

    .line 69
    invoke-static {}, Lo/updateItemCount;->onPostMessage()Lo/updateItemCount;

    move-result-object p1

    .line 70
    iput-object p1, p0, Lo/getByPosition;->onTransact:Lo/invalidateAnchorPositionInfo;

    .line 73
    invoke-static {}, Lo/setStrokeWidth;->onPostMessage()Lo/setStrokeWidth;

    move-result-object p1

    .line 74
    iput-object p1, p0, Lo/getByPosition;->onRelationshipValidationResult:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 75
    iput-boolean v1, p0, Lo/getByPosition;->warmup:Z

    return-void

    .line 11215
    :cond_3
    throw v2

    .line 7215
    :cond_4
    throw v2

    .line 6215
    :cond_5
    throw v2

    .line 2177
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Either a non-null context or a base directory path or supplier must be provided."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
