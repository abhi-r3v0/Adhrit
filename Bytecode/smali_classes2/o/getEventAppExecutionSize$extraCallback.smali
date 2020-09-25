.class public abstract Lo/getEventAppExecutionSize$extraCallback;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventAppExecutionSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/getEventAppExecutionSize$extraCallback<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;>",
        "Lo/getEventAppExecutionSize<",
        "TMessageType;TBuilderType;>;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected extensions:Lo/getBinaryImageSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getBinaryImageSize<",
            "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 498
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 505
    invoke-static {}, Lo/getBinaryImageSize;->extraCallback()Lo/getBinaryImageSize;

    move-result-object v0

    iput-object v0, p0, Lo/getEventAppExecutionSize$extraCallback;->extensions:Lo/getBinaryImageSize;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Lo/getBinaryImageSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getBinaryImageSize<",
            "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lo/getEventAppExecutionSize$extraCallback;->extensions:Lo/getBinaryImageSize;

    .line 1138
    iget-boolean v0, v0, Lo/getBinaryImageSize;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lo/getEventAppExecutionSize$extraCallback;->extensions:Lo/getBinaryImageSize;

    invoke-virtual {v0}, Lo/getBinaryImageSize;->ICustomTabsCallback()Lo/getBinaryImageSize;

    move-result-object v0

    iput-object v0, p0, Lo/getEventAppExecutionSize$extraCallback;->extensions:Lo/getBinaryImageSize;

    .line 788
    :cond_0
    iget-object v0, p0, Lo/getEventAppExecutionSize$extraCallback;->extensions:Lo/getBinaryImageSize;

    return-object v0
.end method
