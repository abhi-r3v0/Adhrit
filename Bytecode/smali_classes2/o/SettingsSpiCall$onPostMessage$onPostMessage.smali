.class public final Lo/SettingsSpiCall$onPostMessage$onPostMessage;
.super Lo/SettingsSpiCall$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SettingsSpiCall$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/SettingsSpiCall$onPostMessage$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static extraCallback:Ljava/lang/String;

.field private static onNavigationEvent:Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:I

.field public final onPostMessage:Lo/AppRequestData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage$2;

    invoke-direct {v0}, Lo/SettingsSpiCall$onPostMessage$onPostMessage$2;-><init>()V

    sput-object v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "com.com.mixpanel.android.mpmetrics.UpdateDisplayState.InAppNotificationState.INAPP_KEY"

    .line 96
    sput-object v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v0, "com.com.mixpanel.android.mpmetrics.UpdateDisplayState.InAppNotificationState.HIGHLIGHT_KEY"

    .line 97
    sput-object v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lo/SettingsSpiCall$onPostMessage;-><init>(B)V

    .line 89
    sget-object v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/AppRequestData;

    iput-object v0, p0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onPostMessage:Lo/AppRequestData;

    .line 90
    sget-object v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->ICustomTabsCallback:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;B)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/SettingsSpiCall$onPostMessage$onPostMessage;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lo/AppRequestData;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lo/SettingsSpiCall$onPostMessage;-><init>(B)V

    .line 58
    iput-object p1, p0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onPostMessage:Lo/AppRequestData;

    .line 59
    iput p2, p0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 82
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 83
    sget-object v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->extraCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onPostMessage:Lo/AppRequestData;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    sget-object v0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    iget v1, p0, Lo/SettingsSpiCall$onPostMessage$onPostMessage;->ICustomTabsCallback:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
