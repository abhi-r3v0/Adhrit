.class final Lo/CategoryAggSpend;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RawBankAccount;


# instance fields
.field private final synthetic onNavigationEvent:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Lo/SuggestedAmount;)V
    .locals 0

    iput-object p1, p0, Lo/CategoryAggSpend;->onNavigationEvent:Lo/SuggestedAmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 1

    iget-object v0, p0, Lo/CategoryAggSpend;->onNavigationEvent:Lo/SuggestedAmount;

    invoke-virtual {v0, p1}, Lo/SuggestedAmount;->onMessageChannelReady(Ljava/lang/Throwable;)V

    return-void
.end method
