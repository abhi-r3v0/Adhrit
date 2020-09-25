.class final Lo/getNetworkClass;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/CarrierFingerPrint;

.field private final synthetic onNavigationEvent:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/CarrierFingerPrint;Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/getNetworkClass;->onMessageChannelReady:Lo/CarrierFingerPrint;

    iput-object p2, p0, Lo/getNetworkClass;->onNavigationEvent:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lo/getNetworkClass;->onMessageChannelReady:Lo/CarrierFingerPrint;

    iget-object v0, p0, Lo/getNetworkClass;->onNavigationEvent:Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-static {p2, v0, p1}, Lo/CarrierFingerPrint;->ICustomTabsCallback(Lo/CarrierFingerPrint;Lo/openGameRewards;Ljava/lang/String;)V

    return-void
.end method
