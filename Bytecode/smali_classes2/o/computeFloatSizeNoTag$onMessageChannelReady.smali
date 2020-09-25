.class final Lo/computeFloatSizeNoTag$onMessageChannelReady;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeFloatSizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/computeDoubleSize<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/computeDoubleSizeNoTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSizeNoTag<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/computeDoubleSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSize<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/writeStringNoTag;Ljava/lang/reflect/Type;Lo/computeDoubleSize;Lo/computeDoubleSizeNoTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeStringNoTag;",
            "Ljava/lang/reflect/Type;",
            "Lo/computeDoubleSize<",
            "TE;>;",
            "Lo/computeDoubleSizeNoTag<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 68
    new-instance v0, Lo/computeSInt32SizeNoTag;

    invoke-direct {v0, p1, p3, p2}, Lo/computeSInt32SizeNoTag;-><init>(Lo/writeStringNoTag;Lo/computeDoubleSize;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lo/computeFloatSizeNoTag$onMessageChannelReady;->onPostMessage:Lo/computeDoubleSize;

    .line 70
    iput-object p4, p0, Lo/computeFloatSizeNoTag$onMessageChannelReady;->ICustomTabsCallback:Lo/computeDoubleSizeNoTag;

    return-void
.end method


# virtual methods
.method public final synthetic read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1074
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    sget-object v1, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    if-ne v0, v1, :cond_0

    .line 1075
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V

    const/4 p1, 0x0

    return-object p1

    .line 1079
    :cond_0
    iget-object v0, p0, Lo/computeFloatSizeNoTag$onMessageChannelReady;->ICustomTabsCallback:Lo/computeDoubleSizeNoTag;

    invoke-interface {v0}, Lo/computeDoubleSizeNoTag;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1080
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->extraCallback()V

    .line 1081
    :goto_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    iget-object v1, p0, Lo/computeFloatSizeNoTag$onMessageChannelReady;->onPostMessage:Lo/computeDoubleSize;

    invoke-virtual {v1, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v1

    .line 1083
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1085
    :cond_1
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onMessageChannelReady()V

    return-object v0
.end method

.method public final synthetic write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    .line 1091
    invoke-virtual {p1}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    return-void

    .line 1095
    :cond_0
    invoke-virtual {p1}, Lo/computeTagSize;->ICustomTabsCallback()Lo/computeTagSize;

    .line 1096
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lo/computeFloatSizeNoTag$onMessageChannelReady;->onPostMessage:Lo/computeDoubleSize;

    invoke-virtual {v1, p1, v0}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    goto :goto_0

    .line 1099
    :cond_1
    invoke-virtual {p1}, Lo/computeTagSize;->onMessageChannelReady()Lo/computeTagSize;

    return-void
.end method
