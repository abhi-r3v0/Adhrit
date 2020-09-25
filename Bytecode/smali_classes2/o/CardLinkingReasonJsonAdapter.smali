.class public final Lo/CardLinkingReasonJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/InstrumentValidationSuccessResponseJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/CardLinkSuccessResponseJsonAdapter;ILjava/lang/String;Lo/getLinkingData;)Lo/InstrumentValidationSuccessRequest;
    .locals 0

    new-instance p2, Lo/LinkingDataJsonAdapter;

    invoke-direct {p2, p1}, Lo/LinkingDataJsonAdapter;-><init>(Lo/CardLinkSuccessResponseJsonAdapter;)V

    return-object p2
.end method
