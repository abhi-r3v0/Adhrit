.class public final Lo/Nudge$Background;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SummaryBank;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/SummaryBankProperties;


# direct methods
.method public constructor <init>(Lo/SummaryBankProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Nudge$Background;->ICustomTabsCallback:Lo/SummaryBankProperties;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/setOnCtaClick;)Lo/StatementDetailsRequestJsonAdapter;
    .locals 7

    iget-object v0, p3, Lo/setOnCtaClick;->RemoteActionCompatParcelizer:Lo/NudgeJsonAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v6, Lo/CtasJsonAdapter;

    iget-object v3, p3, Lo/setOnCtaClick;->RemoteActionCompatParcelizer:Lo/NudgeJsonAdapter;

    iget-object v4, p3, Lo/setOnCtaClick;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, p0, Lo/Nudge$Background;->ICustomTabsCallback:Lo/SummaryBankProperties;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/CtasJsonAdapter;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/NudgeJsonAdapter;Ljava/lang/String;Lo/SummaryBankProperties;)V

    return-object v6
.end method
