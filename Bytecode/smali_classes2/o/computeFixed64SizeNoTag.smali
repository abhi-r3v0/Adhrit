.class public final Lo/computeFixed64SizeNoTag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computeFixed64SizeNoTag$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/computeFixed64Size;

.field final onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/computeFixed64Size;Z)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lo/computeFixed64SizeNoTag;->ICustomTabsCallback:Lo/computeFixed64Size;

    .line 112
    iput-boolean p2, p0, Lo/computeFixed64SizeNoTag;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 11
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

    .line 1101
    iget-object v0, p2, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 2094
    iget-object v1, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    invoke-static {v0}, Lo/computeFixed32Size;->extraCallback(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lo/computeFixed32Size;->onPostMessage(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    aget-object v2, v0, v1

    .line 2140
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 2142
    :cond_1
    invoke-static {v2}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v2

    goto :goto_1

    .line 2141
    :cond_2
    :goto_0
    sget-object v2, Lo/computeSInt64SizeNoTag;->extraCallback:Lo/computeDoubleSize;

    :goto_1
    move-object v7, v2

    const/4 v2, 0x1

    .line 126
    aget-object v3, v0, v2

    invoke-static {v3}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object v3

    invoke-virtual {p1, v3}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v9

    .line 127
    iget-object v3, p0, Lo/computeFixed64SizeNoTag;->ICustomTabsCallback:Lo/computeFixed64Size;

    invoke-virtual {v3, p2}, Lo/computeFixed64Size;->ICustomTabsCallback(Lo/writeRawByte;)Lo/computeDoubleSizeNoTag;

    move-result-object v10

    .line 131
    new-instance p2, Lo/computeFixed64SizeNoTag$onNavigationEvent;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lo/computeFixed64SizeNoTag$onNavigationEvent;-><init>(Lo/computeFixed64SizeNoTag;Lo/writeStringNoTag;Ljava/lang/reflect/Type;Lo/computeDoubleSize;Ljava/lang/reflect/Type;Lo/computeDoubleSize;Lo/computeDoubleSizeNoTag;)V

    return-object p2
.end method
