.class public final Lo/getChangedHolderKey$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setIconStartPadding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChangedHolderKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinCardAdapter$Companion;",
        "",
        "()V",
        "TYPE_GRID_CARD",
        "",
        "TYPE_IMAGE_CARD",
        "TYPE_ONLINE_COUNT_CARD",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final synthetic zza:Lo/getCsatResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getCsatResponse;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .locals 1

    .line 1032
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1017
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0}, Lo/getCsatResponse;->asInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2}, Lo/getCsatResponse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2, p3}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Bundle;)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onPostMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/Boolean;)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1022
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1002
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2, p3}, Lo/getCsatResponse;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 1004
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2, p3}, Lo/getCsatResponse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lo/setChipIconTint;)V
    .locals 1

    .line 1013
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->extraCallback(Lo/setChipIconTint;)V

    return-void
.end method

.method public final zza(Lo/setChipIconTintResource;)V
    .locals 1

    .line 1011
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onPostMessage(Lo/setChipIconTintResource;)V

    return-void
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1018
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0}, Lo/getCsatResponse;->onTransact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 1

    .line 1024
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1, p2, p3}, Lo/getCsatResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzb(Lo/setChipIconTint;)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onMessageChannelReady(Lo/setChipIconTint;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)I
    .locals 1

    .line 1031
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0, p1}, Lo/getCsatResponse;->onNavigationEvent(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 1019
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0}, Lo/getCsatResponse;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 1020
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0}, Lo/getCsatResponse;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()J
    .locals 2

    .line 1021
    iget-object v0, p0, Lo/getChangedHolderKey$ICustomTabsCallback;->zza:Lo/getCsatResponse;

    invoke-virtual {v0}, Lo/getCsatResponse;->onPostMessage()J

    move-result-wide v0

    return-wide v0
.end method
