.class public final Lo/computeBoolSizeNoTag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;


# instance fields
.field private final onNavigationEvent:Lo/computeFixed64Size;


# direct methods
.method public constructor <init>(Lo/computeFixed64Size;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/computeBoolSizeNoTag;->onNavigationEvent:Lo/computeFixed64Size;

    return-void
.end method

.method static onMessageChannelReady(Lo/computeFixed64Size;Lo/writeStringNoTag;Lo/writeRawByte;Lo/computeUInt64Size;)Lo/computeDoubleSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/computeFixed64Size;",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "*>;",
            "Lo/computeUInt64Size;",
            ")",
            "Lo/computeDoubleSize<",
            "*>;"
        }
    .end annotation

    .line 55
    invoke-interface {p3}, Lo/computeUInt64Size;->onPostMessage()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/computeFixed64Size;->ICustomTabsCallback(Lo/writeRawByte;)Lo/computeDoubleSizeNoTag;

    move-result-object p0

    invoke-interface {p0}, Lo/computeDoubleSizeNoTag;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    .line 58
    instance-of v0, p0, Lo/computeDoubleSize;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lo/computeDoubleSize;

    goto :goto_2

    .line 60
    :cond_0
    instance-of v0, p0, Lo/computeFloatSize;

    if-eqz v0, :cond_1

    .line 61
    check-cast p0, Lo/computeFloatSize;

    invoke-interface {p0, p1, p2}, Lo/computeFloatSize;->create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p0

    goto :goto_2

    .line 62
    :cond_1
    instance-of v0, p0, Lo/computeInt64Size;

    if-nez v0, :cond_3

    instance-of v1, p0, Lo/writeSFixed64NoTag;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 64
    move-object v0, p0

    check-cast v0, Lo/computeInt64Size;

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 66
    :goto_1
    instance-of v2, p0, Lo/writeSFixed64NoTag;

    if-eqz v2, :cond_5

    .line 67
    move-object v1, p0

    check-cast v1, Lo/writeSFixed64NoTag;

    .line 69
    :cond_5
    new-instance p0, Lo/computeStringSizeNoTag;

    invoke-direct {p0, v0, v1, p1, p2}, Lo/computeStringSizeNoTag;-><init>(Lo/computeInt64Size;Lo/writeSFixed64NoTag;Lo/writeStringNoTag;Lo/writeRawByte;)V

    :goto_2
    if-eqz p0, :cond_6

    .line 77
    invoke-interface {p3}, Lo/computeUInt64Size;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 78
    invoke-virtual {p0}, Lo/computeDoubleSize;->nullSafe()Lo/computeDoubleSize;

    move-result-object p0

    :cond_6
    return-object p0
.end method


# virtual methods
.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "TT;>;)",
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation

    .line 1094
    iget-object v0, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 45
    const-class v1, Lo/computeUInt64Size;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lo/computeUInt64Size;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    iget-object v1, p0, Lo/computeBoolSizeNoTag;->onNavigationEvent:Lo/computeFixed64Size;

    invoke-static {v1, p1, p2, v0}, Lo/computeBoolSizeNoTag;->onMessageChannelReady(Lo/computeFixed64Size;Lo/writeStringNoTag;Lo/writeRawByte;Lo/computeUInt64Size;)Lo/computeDoubleSize;

    move-result-object p1

    return-object p1
.end method
