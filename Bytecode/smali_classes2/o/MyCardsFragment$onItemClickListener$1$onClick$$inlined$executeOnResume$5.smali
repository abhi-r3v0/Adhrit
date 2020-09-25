.class final Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Landroid/content/Context;

.field private final synthetic onMessageChannelReady:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;Landroid/content/Context;Lo/SuggestedAmount;)V
    .locals 0

    iput-object p2, p0, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->extraCallback:Landroid/content/Context;

    iput-object p3, p0, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onMessageChannelReady:Lo/SuggestedAmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->extraCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/getTotalAmountDue;->getAdvertisingIdInfo(Landroid/content/Context;)Lo/getTotalAmountDue$onNavigationEvent;

    move-result-object v0

    iget-object v1, p0, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onMessageChannelReady:Lo/SuggestedAmount;

    invoke-virtual {v1, v0}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    iget-object v1, p0, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;->onMessageChannelReady:Lo/SuggestedAmount;

    invoke-virtual {v1, v0}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    const-string v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
