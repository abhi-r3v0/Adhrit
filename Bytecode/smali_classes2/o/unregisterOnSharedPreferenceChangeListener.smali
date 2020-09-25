.class public final Lo/unregisterOnSharedPreferenceChangeListener;
.super Lo/getTags;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/unregisterOnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/flushOrLog;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/h$1;

    invoke-direct {v0}, Lo/h$1;-><init>()V

    sput-object v0, Lo/unregisterOnSharedPreferenceChangeListener;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/flushOrLog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 2
    iput-object p1, p0, Lo/unregisterOnSharedPreferenceChangeListener;->onNavigationEvent:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/unregisterOnSharedPreferenceChangeListener;->ICustomTabsCallback:Lo/flushOrLog;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 8
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 10
    iget-object v1, p0, Lo/unregisterOnSharedPreferenceChangeListener;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 12
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 14
    iget-object v1, p0, Lo/unregisterOnSharedPreferenceChangeListener;->ICustomTabsCallback:Lo/flushOrLog;

    const/4 v3, 0x2

    .line 16
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 17
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
