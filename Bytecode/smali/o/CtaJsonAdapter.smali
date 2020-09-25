.class public final Lo/CtaJsonAdapter;
.super Lo/HeaderData;
.source ""


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/getJuspayUpi;IILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 86
    invoke-direct {p0, p1, v0}, Lo/HeaderData;-><init>(Lo/getJuspayUpi;[I)V

    .line 87
    iput p3, p0, Lo/CtaJsonAdapter;->ICustomTabsCallback:I

    .line 88
    iput-object p4, p0, Lo/CtaJsonAdapter;->extraCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 1

    .line 113
    iget-object v0, p0, Lo/CtaJsonAdapter;->extraCallback:Ljava/lang/Object;

    return-object v0
.end method

.method public final extraCallback(JJJLjava/util/List;[Lo/component2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lo/getMerchantId;",
            ">;[",
            "Lo/component2;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 108
    iget v0, p0, Lo/CtaJsonAdapter;->ICustomTabsCallback:I

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
