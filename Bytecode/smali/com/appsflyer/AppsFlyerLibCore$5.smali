.class final Lcom/appsflyer/AppsFlyerLibCore$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLibCore;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ǃ:Landroid/content/SharedPreferences;

.field private synthetic ɩ:Landroid/content/Context;

.field private synthetic ι:Lcom/appsflyer/AppsFlyerLibCore;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ι:Lcom/appsflyer/AppsFlyerLibCore;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ǃ:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ɩ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 783
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ǃ:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ι:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ɩ:Landroid/content/Context;

    .line 784
    invoke-static {v0, v1}, Lcom/appsflyer/internal/referrer/GoogleReferrer;->allow(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ǃ:Landroid/content/SharedPreferences;

    const-string v1, "newGPReferrerSent"

    .line 785
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ι:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v1, Lcom/appsflyer/internal/model/event/Attr;

    invoke-direct {v1}, Lcom/appsflyer/internal/model/event/Attr;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$5;->ɩ:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/model/event/Attr;->context(Landroid/content/Context;)Lcom/appsflyer/AFEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->ι(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V

    :cond_1
    return-void
.end method
