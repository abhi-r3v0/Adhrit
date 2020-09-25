.class Lcom/appsflyer/OaidClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/OaidClient$Info;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Landroid/content/Context;)Lcom/appsflyer/OaidClient$Info;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    new-instance v0, Lcom/appsflyer/oaid/OaidClient;

    invoke-direct {v0, p0}, Lcom/appsflyer/oaid/OaidClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/appsflyer/oaid/OaidClient;->fetch()Lcom/appsflyer/oaid/OaidClient$Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 12
    new-instance v0, Lcom/appsflyer/OaidClient$Info;

    invoke-virtual {p0}, Lcom/appsflyer/oaid/OaidClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appsflyer/oaid/OaidClient$Info;->getLat()Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/appsflyer/OaidClient$Info;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
