.class public final Lo/dropTable;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/computeFloatSize;",
            ">;"
        }
    .end annotation
.end field

.field public ICustomTabsCallback$Stub:Z

.field public asBinder:Ljava/lang/String;

.field public final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/computeFloatSize;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lo/writeFixed32NoTag<",
            "*>;>;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Lo/writeUInt32NoTag;

.field public onNavigationEvent:Lo/computeSFixed32Size;

.field public onPostMessage:Lo/computeInt32Size;

.field public onRelationshipValidationResult:I

.field public onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    sget-object v0, Lo/computeSFixed32Size;->ICustomTabsCallback:Lo/computeSFixed32Size;

    iput-object v0, p0, Lo/dropTable;->onNavigationEvent:Lo/computeSFixed32Size;

    .line 1080
    sget-object v0, Lo/computeInt32Size;->onPostMessage:Lo/computeInt32Size;

    iput-object v0, p0, Lo/dropTable;->onPostMessage:Lo/computeInt32Size;

    .line 1081
    sget-object v0, Lo/writeBytesNoTag;->onPostMessage:Lo/writeBytesNoTag;

    iput-object v0, p0, Lo/dropTable;->onMessageChannelReady:Lo/writeUInt32NoTag;

    .line 1082
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/dropTable;->extraCallback:Ljava/util/Map;

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/dropTable;->ICustomTabsCallback:Ljava/util/List;

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/dropTable;->asInterface:Ljava/util/List;

    const/4 v0, 0x2

    .line 1089
    iput v0, p0, Lo/dropTable;->onTransact:I

    .line 1090
    iput v0, p0, Lo/dropTable;->onRelationshipValidationResult:I

    const/4 v0, 0x1

    .line 1093
    iput-boolean v0, p0, Lo/dropTable;->ICustomTabsCallback$Stub:Z

    return-void
.end method


# virtual methods
.method public final varargs ICustomTabsCallback([Lo/writeFloatNoTag;)Lo/dropTable;
    .locals 7

    .line 1339
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1340
    iget-object v3, p0, Lo/dropTable;->onNavigationEvent:Lo/computeSFixed32Size;

    .line 2098
    invoke-virtual {v3}, Lo/computeSFixed32Size;->onPostMessage()Lo/computeSFixed32Size;

    move-result-object v4

    .line 2100
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lo/computeSFixed32Size;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lo/computeSFixed32Size;->onMessageChannelReady:Ljava/util/List;

    .line 2101
    iget-object v5, v4, Lo/computeSFixed32Size;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2104
    new-instance v5, Ljava/util/ArrayList;

    iget-object v3, v3, Lo/computeSFixed32Size;->onTransact:Ljava/util/List;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lo/computeSFixed32Size;->onTransact:Ljava/util/List;

    .line 2106
    iget-object v3, v4, Lo/computeSFixed32Size;->onTransact:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1340
    iput-object v4, p0, Lo/dropTable;->onNavigationEvent:Lo/computeSFixed32Size;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
