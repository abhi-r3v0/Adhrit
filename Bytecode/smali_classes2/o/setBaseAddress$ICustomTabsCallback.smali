.class Lo/setBaseAddress$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setBaseAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/from<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final chunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/SessionProtobufHelper;",
            ">;"
        }
    .end annotation
.end field

.field private more:Z


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setBaseAddress$ICustomTabsCallback;->chunks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lo/setBaseAddress$ICustomTabsCallback;->more:Z

    .line 482
    invoke-direct {p0, p1}, Lo/setBaseAddress$ICustomTabsCallback;->addChunk([B)V

    return-void
.end method

.method static synthetic access$000(Lo/setBaseAddress$ICustomTabsCallback;)Z
    .locals 0

    .line 477
    iget-boolean p0, p0, Lo/setBaseAddress$ICustomTabsCallback;->more:Z

    return p0
.end method

.method private addChunk([B)V
    .locals 1

    .line 505
    invoke-static {p1}, Lo/SessionProtobufHelper;->onNavigationEvent([B)Lo/SessionProtobufHelper;

    move-result-object p1

    .line 506
    iget-object v0, p0, Lo/setBaseAddress$ICustomTabsCallback;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public accept(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 497
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    .line 498
    invoke-direct {p0, p1}, Lo/setBaseAddress$ICustomTabsCallback;->addChunk([B)V

    .line 499
    array-length p1, p1

    const v1, 0xf4240

    if-ge p1, v1, :cond_0

    .line 500
    iput-boolean v0, p0, Lo/setBaseAddress$ICustomTabsCallback;->more:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 477
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lo/setBaseAddress$ICustomTabsCallback;->accept(Landroid/database/Cursor;)V

    return-void
.end method

.method numChunks()I
    .locals 1

    .line 486
    iget-object v0, p0, Lo/setBaseAddress$ICustomTabsCallback;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method result()Lo/SessionProtobufHelper;
    .locals 1

    .line 492
    iget-object v0, p0, Lo/setBaseAddress$ICustomTabsCallback;->chunks:Ljava/util/ArrayList;

    invoke-static {v0}, Lo/SessionProtobufHelper;->onPostMessage(Ljava/lang/Iterable;)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method
