.class final Lo/CashBackDetails$$Parcelable;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RawBankAccount;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic onPostMessage:Lo/getDetails;


# direct methods
.method constructor <init>(Lo/getCashback_disabled;Ljava/lang/String;Lo/getDetails;)V
    .locals 0

    iput-object p2, p0, Lo/CashBackDetails$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/CashBackDetails$$Parcelable;->onPostMessage:Lo/getDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 3

    iget-object v0, p0, Lo/CashBackDetails$$Parcelable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzae;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load URL: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    iget-object p1, p0, Lo/CashBackDetails$$Parcelable;->onPostMessage:Lo/getDetails;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/getDetails;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method
