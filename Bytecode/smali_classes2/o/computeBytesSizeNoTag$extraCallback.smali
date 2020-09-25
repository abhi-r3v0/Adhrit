.class public final Lo/computeBytesSizeNoTag$extraCallback;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeBytesSizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/computeDoubleSize<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/computeDoubleSizeNoTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSizeNoTag<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/computeBytesSizeNoTag$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/computeDoubleSizeNoTag;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/computeDoubleSizeNoTag<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/computeBytesSizeNoTag$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 202
    iput-object p1, p0, Lo/computeBytesSizeNoTag$extraCallback;->onNavigationEvent:Lo/computeDoubleSizeNoTag;

    .line 203
    iput-object p2, p0, Lo/computeBytesSizeNoTag$extraCallback;->onPostMessage:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/checkNoSpaceLeft;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    sget-object v1, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V

    const/4 p1, 0x0

    return-object p1

    .line 212
    :cond_0
    iget-object v0, p0, Lo/computeBytesSizeNoTag$extraCallback;->onNavigationEvent:Lo/computeDoubleSizeNoTag;

    invoke-interface {v0}, Lo/computeDoubleSizeNoTag;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onNavigationEvent()V

    .line 216
    :goto_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asBinder()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lo/computeBytesSizeNoTag$extraCallback;->onPostMessage:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/computeBytesSizeNoTag$onMessageChannelReady;

    if-eqz v1, :cond_2

    .line 219
    iget-boolean v2, v1, Lo/computeBytesSizeNoTag$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {v1, p1, v0}, Lo/computeBytesSizeNoTag$onMessageChannelReady;->extraCallback(Lo/checkNoSpaceLeft;Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->getInterfaceDescriptor()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onPostMessage()V

    return-object v0

    :catch_0
    move-exception p1

    .line 228
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 226
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/computeTagSize;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 236
    invoke-virtual {p1}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    return-void

    .line 240
    :cond_0
    invoke-virtual {p1}, Lo/computeTagSize;->onNavigationEvent()Lo/computeTagSize;

    .line 242
    :try_start_0
    iget-object v0, p0, Lo/computeBytesSizeNoTag$extraCallback;->onPostMessage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/computeBytesSizeNoTag$onMessageChannelReady;

    .line 243
    invoke-virtual {v1, p2}, Lo/computeBytesSizeNoTag$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    iget-object v2, v1, Lo/computeBytesSizeNoTag$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lo/computeTagSize;->ICustomTabsCallback(Ljava/lang/String;)Lo/computeTagSize;

    .line 245
    invoke-virtual {v1, p1, p2}, Lo/computeBytesSizeNoTag$onMessageChannelReady;->extraCallback(Lo/computeTagSize;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Lo/computeTagSize;->onPostMessage()Lo/computeTagSize;

    return-void

    :catch_0
    move-exception p1

    .line 249
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
