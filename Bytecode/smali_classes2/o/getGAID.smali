.class final Lo/getGAID;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/CarrierFingerPrint;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/CarrierFingerPrint;Lo/SuggestedAmount;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getGAID;->extraCallback:Lo/CarrierFingerPrint;

    iput-object p2, p0, Lo/getGAID;->onPostMessage:Lo/SuggestedAmount;

    iput-object p3, p0, Lo/getGAID;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/getGAID;->onPostMessage:Lo/SuggestedAmount;

    iget-object v1, p0, Lo/getGAID;->extraCallback:Lo/CarrierFingerPrint;

    invoke-static {v1}, Lo/CarrierFingerPrint;->extraCallback(Lo/CarrierFingerPrint;)Lo/setPanGiven;

    move-result-object v1

    invoke-virtual {v1}, Lo/setPanGiven;->disconnect()Lo/fromMediaItemList;

    move-result-object v1

    iget-object v2, p0, Lo/getGAID;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;

    invoke-virtual {v0, v1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
