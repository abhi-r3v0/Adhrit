.class public final Lo/CardLinkingReason;
.super Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SpinTheWheelResponse_MetaJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:I

.field private final onPostMessage:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/SpinTheWheelResponse_MetaJsonAdapter;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/CardLinkingReason;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/SpinTheWheelResponse_MetaJsonAdapter;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/CardLinkingReason;->onNavigationEvent:I

    iput-object p2, p0, Lo/CardLinkingReason;->extraCallback:Ljava/util/List;

    iput p3, p0, Lo/CardLinkingReason;->ICustomTabsCallback:I

    iput-object p4, p0, Lo/CardLinkingReason;->onPostMessage:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/SpinTheWheelResponse_MetaJsonAdapter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/CardLinkingReason;->extraCallback:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lo/CardLinkingReason;->onPostMessage:Ljava/io/InputStream;

    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/CardLinkingReason;->onNavigationEvent:I

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/CardLinkingReason;->ICustomTabsCallback:I

    return v0
.end method
