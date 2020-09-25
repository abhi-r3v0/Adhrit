.class public abstract Lo/isPlayServicesPossiblyUpdating$extraCallback;
.super Lo/isPlayServicesPossiblyUpdating;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isPlayServicesPossiblyUpdating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/isPlayServicesPossiblyUpdating$extraCallback<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;>",
        "Lo/isPlayServicesPossiblyUpdating<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zzyg:Lo/getErrorPendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getErrorPendingIntent<",
            "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/isPlayServicesPossiblyUpdating;-><init>()V

    .line 2
    invoke-static {}, Lo/getErrorPendingIntent;->extraCallback()Lo/getErrorPendingIntent;

    move-result-object v0

    iput-object v0, p0, Lo/isPlayServicesPossiblyUpdating$extraCallback;->zzyg:Lo/getErrorPendingIntent;

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()Lo/getErrorPendingIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getErrorPendingIntent<",
            "Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$extraCallback;->zzyg:Lo/getErrorPendingIntent;

    invoke-virtual {v0}, Lo/getErrorPendingIntent;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$extraCallback;->zzyg:Lo/getErrorPendingIntent;

    invoke-virtual {v0}, Lo/getErrorPendingIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getErrorPendingIntent;

    iput-object v0, p0, Lo/isPlayServicesPossiblyUpdating$extraCallback;->zzyg:Lo/getErrorPendingIntent;

    .line 5
    :cond_0
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$extraCallback;->zzyg:Lo/getErrorPendingIntent;

    return-object v0
.end method
