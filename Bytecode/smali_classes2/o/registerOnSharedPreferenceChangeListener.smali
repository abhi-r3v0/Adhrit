.class public final Lo/registerOnSharedPreferenceChangeListener;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/registerOnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lo/getAll;

    invoke-direct {v0}, Lo/getAll;-><init>()V

    sput-object v0, Lo/registerOnSharedPreferenceChangeListener;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/registerOnSharedPreferenceChangeListener;->onPostMessage:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/registerOnSharedPreferenceChangeListener;->onMessageChannelReady:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lo/registerOnSharedPreferenceChangeListener;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 10
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    .line 12
    iget-object v0, p0, Lo/registerOnSharedPreferenceChangeListener;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    iget-object v0, p0, Lo/registerOnSharedPreferenceChangeListener;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x2

    .line 18
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    iget-object v0, p0, Lo/registerOnSharedPreferenceChangeListener;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x3

    .line 22
    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
