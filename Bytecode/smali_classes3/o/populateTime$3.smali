.class final Lo/populateTime$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/convertLongToFourByteBuffer$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateTime;->registerAnalyticsConnectorListener(Ljava/lang/String;Lo/convertLongToFourByteBuffer$onNavigationEvent;)Lo/convertLongToFourByteBuffer$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Lo/populateTime;


# direct methods
.method constructor <init>(Lo/populateTime;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/populateTime$3;->zzb:Lo/populateTime;

    iput-object p2, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerEventNames(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/populateTime$3;->zzb:Lo/populateTime;

    iget-object v1, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/populateTime;->zza(Lo/populateTime;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    const-string v1, "fiam"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lo/populateTime$3;->zzb:Lo/populateTime;

    iget-object v0, v0, Lo/populateTime;->zza:Ljava/util/Map;

    iget-object v1, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getLegacySharedPrefs;

    invoke-interface {v0, p1}, Lo/getLegacySharedPrefs;->zza(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final unregister()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/populateTime$3;->zzb:Lo/populateTime;

    iget-object v1, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/populateTime;->zza(Lo/populateTime;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lo/populateTime$3;->zzb:Lo/populateTime;

    iget-object v0, v0, Lo/populateTime;->zza:Ljava/util/Map;

    iget-object v1, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getLegacySharedPrefs;

    invoke-interface {v0}, Lo/getLegacySharedPrefs;->zza()Lo/convertLongToFourByteBuffer$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Lo/convertLongToFourByteBuffer$onNavigationEvent;->onMessageTriggered(ILandroid/os/Bundle;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lo/populateTime$3;->zzb:Lo/populateTime;

    iget-object v0, v0, Lo/populateTime;->zza:Ljava/util/Map;

    iget-object v1, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unregisterEventNames()V
    .locals 2

    .line 15
    iget-object v0, p0, Lo/populateTime$3;->zzb:Lo/populateTime;

    iget-object v1, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/populateTime;->zza(Lo/populateTime;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    const-string v1, "fiam"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lo/populateTime$3;->zzb:Lo/populateTime;

    iget-object v0, v0, Lo/populateTime;->zza:Ljava/util/Map;

    iget-object v1, p0, Lo/populateTime$3;->zza:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getLegacySharedPrefs;

    invoke-interface {v0}, Lo/getLegacySharedPrefs;->zzb()V

    :cond_1
    :goto_0
    return-void
.end method
