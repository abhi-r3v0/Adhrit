.class public final Lo/FeaturePitchJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/FeaturePitch;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/FeaturePitch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/FeaturePitchJsonAdapter;->extraCallback:Ljava/util/List;

    return-void
.end method

.method public static onNavigationEvent(Lo/CardLinkSuccessResponseJsonAdapter;)Z
    .locals 0

    invoke-static {p0}, Lo/FeaturePitchJsonAdapter;->onPostMessage(Lo/CardLinkSuccessResponseJsonAdapter;)Lo/FeaturePitch;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lo/FeaturePitch;->onPostMessage:Lo/InstrumentValidationSuccessRequest;

    invoke-virtual {p0}, Lo/InstrumentValidationSuccessRequest;->onPostMessage()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static onPostMessage(Lo/CardLinkSuccessResponseJsonAdapter;)Lo/FeaturePitch;
    .locals 3

    invoke-static {}, Lo/getParcel;->cancelAll()Lo/FeaturePitchJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/FeaturePitchJsonAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FeaturePitch;

    iget-object v2, v1, Lo/FeaturePitch;->extraCallback:Lo/CardLinkSuccessResponseJsonAdapter;

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/FeaturePitch;)V
    .locals 1

    iget-object v0, p0, Lo/FeaturePitchJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final extraCallback(Lo/FeaturePitch;)V
    .locals 1

    iget-object v0, p0, Lo/FeaturePitchJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/FeaturePitch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/FeaturePitchJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    iget-object v0, p0, Lo/FeaturePitchJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
