.class public Lo/setChipIcon;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:[Ljava/lang/String;

.field public static final extraCallback:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "firebase_last_notification"

    const-string v1, "first_open_time"

    const-string v2, "first_visit_time"

    const-string v3, "last_deep_link_referrer"

    const-string v4, "user_id"

    const-string v5, "first_open_after_install"

    const-string v6, "lifetime_user_engagement"

    const-string v7, "session_user_engagement"

    const-string v8, "non_personalized_ads"

    const-string v9, "ga_session_number"

    const-string v10, "ga_session_id"

    const-string v11, "last_gclid"

    const-string v12, "session_number"

    const-string v13, "session_id"

    .line 3
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setChipIcon;->extraCallback:[Ljava/lang/String;

    const-string v1, "_ln"

    const-string v2, "_fot"

    const-string v3, "_fvt"

    const-string v4, "_ldl"

    const-string v5, "_id"

    const-string v6, "_fi"

    const-string v7, "_lte"

    const-string v8, "_se"

    const-string v9, "_npa"

    const-string v10, "_sno"

    const-string v11, "_sid"

    const-string v12, "_lgclid"

    const-string v13, "_sno"

    const-string v14, "_sid"

    .line 4
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setChipIcon;->ICustomTabsCallback:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lo/setChipIcon;->extraCallback:[Ljava/lang/String;

    sget-object v1, Lo/setChipIcon;->ICustomTabsCallback:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lo/setDividerDrawableHorizontal;->onPostMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
