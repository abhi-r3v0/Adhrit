.class public final Lo/computeEnumSizeNoTag;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/computeDoubleSize<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/computeFloatSize;


# instance fields
.field private final onMessageChannelReady:Lo/writeStringNoTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lo/computeEnumSizeNoTag$4;

    invoke-direct {v0}, Lo/computeEnumSizeNoTag$4;-><init>()V

    sput-object v0, Lo/computeEnumSizeNoTag;->ICustomTabsCallback:Lo/computeFloatSize;

    return-void
.end method

.method constructor <init>(Lo/writeStringNoTag;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 51
    iput-object p1, p0, Lo/computeEnumSizeNoTag;->onMessageChannelReady:Lo/writeStringNoTag;

    return-void
.end method


# virtual methods
.method public final read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    .line 56
    sget-object v1, Lo/computeEnumSizeNoTag$2;->onPostMessage:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 85
    :pswitch_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V

    const/4 p1, 0x0

    return-object p1

    .line 82
    :pswitch_1
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_2
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_3
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onTransact()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_4
    new-instance v0, Lo/computeEnumSize;

    invoke-direct {v0}, Lo/computeEnumSize;-><init>()V

    .line 68
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onNavigationEvent()V

    .line 69
    :goto_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asBinder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onPostMessage()V

    return-object v0

    .line 58
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->extraCallback()V

    .line 60
    :goto_1
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->onMessageChannelReady()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p1}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lo/computeEnumSizeNoTag;->onMessageChannelReady:Lo/writeStringNoTag;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1556
    invoke-static {v1}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v0

    .line 101
    instance-of v1, v0, Lo/computeEnumSizeNoTag;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Lo/computeTagSize;->onNavigationEvent()Lo/computeTagSize;

    .line 103
    invoke-virtual {p1}, Lo/computeTagSize;->onPostMessage()Lo/computeTagSize;

    return-void

    .line 107
    :cond_1
    invoke-virtual {v0, p1, p2}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    return-void
.end method
