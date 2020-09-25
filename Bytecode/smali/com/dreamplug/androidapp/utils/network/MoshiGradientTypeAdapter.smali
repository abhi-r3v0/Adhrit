.class public final Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter;",
        "",
        "()V",
        "fromJson",
        "",
        "type",
        "",
        "toJson",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)I
    .locals 2
    .annotation runtime Lcom/dreamplug/androidapp/utils/network/GradientType;
    .end annotation

    .annotation runtime Lo/nativeInit;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x37f195e1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "radial"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toJson(I)Ljava/lang/String;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/dreamplug/androidapp/utils/network/GradientType;
        .end annotation
    .end param
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "linear"

    return-object p1

    :cond_0
    const-string p1, "radial"

    return-object p1
.end method
