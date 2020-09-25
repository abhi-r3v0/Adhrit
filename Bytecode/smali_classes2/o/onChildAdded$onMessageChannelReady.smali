.class final Lo/onChildAdded$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fromStatus$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onChildAdded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:I

.field private synthetic onPostMessage:Lo/onChildAdded;


# direct methods
.method constructor <init>(Lo/onChildAdded;IZ)V
    .locals 0

    .line 213
    iput-object p1, p0, Lo/onChildAdded$onMessageChannelReady;->onPostMessage:Lo/onChildAdded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p2, p0, Lo/onChildAdded$onMessageChannelReady;->extraCallback:I

    .line 216
    iput-boolean p3, p0, Lo/onChildAdded$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/fromException;)Lo/removeValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Lo/onChildAdded$onMessageChannelReady;->extraCallback:I

    iget-object v1, p0, Lo/onChildAdded$onMessageChannelReady;->onPostMessage:Lo/onChildAdded;

    .line 1035
    iget-object v1, v1, Lo/onChildAdded;->onMessageChannelReady:Lo/setValueInternal;

    .line 1547
    iget-object v1, v1, Lo/setValueInternal;->onRelationshipValidationResult:Ljava/util/List;

    .line 229
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 230
    new-instance p1, Lo/onChildAdded$onMessageChannelReady;

    iget-object v0, p0, Lo/onChildAdded$onMessageChannelReady;->onPostMessage:Lo/onChildAdded;

    iget v1, p0, Lo/onChildAdded$onMessageChannelReady;->extraCallback:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lo/onChildAdded$onMessageChannelReady;->ICustomTabsCallback:Z

    invoke-direct {p1, v0, v1, v2}, Lo/onChildAdded$onMessageChannelReady;-><init>(Lo/onChildAdded;IZ)V

    .line 231
    iget-object p1, p0, Lo/onChildAdded$onMessageChannelReady;->onPostMessage:Lo/onChildAdded;

    .line 2035
    iget-object p1, p1, Lo/onChildAdded;->onMessageChannelReady:Lo/setValueInternal;

    .line 2547
    iget-object p1, p1, Lo/setValueInternal;->onRelationshipValidationResult:Ljava/util/List;

    .line 231
    iget v0, p0, Lo/onChildAdded$onMessageChannelReady;->extraCallback:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/fromStatus;

    .line 232
    invoke-interface {p1}, Lo/fromStatus;->ICustomTabsCallback()Lo/removeValue;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "application interceptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    iget-object v0, p0, Lo/onChildAdded$onMessageChannelReady;->onPostMessage:Lo/onChildAdded;

    iget-boolean v1, p0, Lo/onChildAdded$onMessageChannelReady;->ICustomTabsCallback:Z

    invoke-virtual {v0, p1, v1}, Lo/onChildAdded;->ICustomTabsCallback(Lo/fromException;Z)Lo/removeValue;

    move-result-object p1

    return-object p1
.end method
