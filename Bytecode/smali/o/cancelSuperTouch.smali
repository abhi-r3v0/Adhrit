.class public final Lo/cancelSuperTouch;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Lo/getThumbTintList<",
        "+",
        "Lo/toggle;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004JZ\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/referral/ReferralData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/data/repository/referral/ReferralDataModel;",
        "()V",
        "post",
        "",
        "code",
        "",
        "name",
        "isGifting",
        "",
        "referralCampaignId",
        "experiment",
        "createdOn",
        "screen",
        "source",
        "instrumentId",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final asInterface:Lo/cancelSuperTouch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lo/cancelSuperTouch;

    invoke-direct {v0}, Lo/cancelSuperTouch;-><init>()V

    sput-object v0, Lo/cancelSuperTouch;->asInterface:Lo/cancelSuperTouch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method
