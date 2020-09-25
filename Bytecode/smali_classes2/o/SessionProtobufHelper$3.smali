.class final Lo/SessionProtobufHelper$3;
.super Lo/SessionProtobufHelper$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SessionProtobufHelper;->extraCallback()Lo/SessionProtobufHelper$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/SessionProtobufHelper;

.field private final extraCallback:I

.field private onMessageChannelReady:I


# direct methods
.method constructor <init>(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lo/SessionProtobufHelper$3;->ICustomTabsCallback:Lo/SessionProtobufHelper;

    invoke-direct {p0}, Lo/SessionProtobufHelper$ICustomTabsCallback;-><init>()V

    const/4 p1, 0x0

    .line 176
    iput p1, p0, Lo/SessionProtobufHelper$3;->onMessageChannelReady:I

    .line 177
    iget-object p1, p0, Lo/SessionProtobufHelper$3;->ICustomTabsCallback:Lo/SessionProtobufHelper;

    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    iput p1, p0, Lo/SessionProtobufHelper$3;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 181
    iget v0, p0, Lo/SessionProtobufHelper$3;->onMessageChannelReady:I

    iget v1, p0, Lo/SessionProtobufHelper$3;->extraCallback:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()B
    .locals 2

    .line 186
    iget v0, p0, Lo/SessionProtobufHelper$3;->onMessageChannelReady:I

    .line 187
    iget v1, p0, Lo/SessionProtobufHelper$3;->extraCallback:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 190
    iput v1, p0, Lo/SessionProtobufHelper$3;->onMessageChannelReady:I

    .line 191
    iget-object v1, p0, Lo/SessionProtobufHelper$3;->ICustomTabsCallback:Lo/SessionProtobufHelper;

    invoke-virtual {v1, v0}, Lo/SessionProtobufHelper;->onMessageChannelReady(I)B

    move-result v0

    return v0

    .line 188
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
