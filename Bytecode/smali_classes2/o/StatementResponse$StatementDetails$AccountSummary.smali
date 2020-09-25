.class public abstract Lo/StatementResponse$StatementDetails$AccountSummary;
.super Lo/getFinanceCharges;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/getFinanceCharges;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getFinanceCharges$onPostMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub()Ljava/lang/Double;
.end method

.method public abstract asBinder()Ljava/lang/CharSequence;
.end method

.method public abstract asInterface()Lo/getRewardsClosingBalance;
.end method

.method public abstract extraCallback()Ljava/lang/CharSequence;
.end method

.method public abstract onMessageChannelReady()Ljava/lang/CharSequence;
.end method

.method public abstract onPostMessage()Lo/getFinanceCharges$onPostMessage;
.end method

.method public abstract onRelationshipValidationResult()Ljava/lang/CharSequence;
.end method

.method public abstract onTransact()Ljava/lang/CharSequence;
.end method
