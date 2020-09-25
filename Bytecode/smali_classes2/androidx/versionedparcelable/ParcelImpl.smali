.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onNavigationEvent:Lo/setTextDelegate$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$4;

    invoke-direct {v0}, Landroidx/versionedparcelable/ParcelImpl$4;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lo/MediaSessionCompatApi24$Callback;

    invoke-direct {v0, p1}, Lo/MediaSessionCompatApi24$Callback;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Lo/MediaSessionCompatApi24$Callback;->ICustomTabsCallback$Stub()Lo/setTextDelegate$onMessageChannelReady;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->onNavigationEvent:Lo/setTextDelegate$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 56
    new-instance p2, Lo/MediaSessionCompatApi24$Callback;

    invoke-direct {p2, p1}, Lo/MediaSessionCompatApi24$Callback;-><init>(Landroid/os/Parcel;)V

    .line 57
    iget-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->onNavigationEvent:Lo/setTextDelegate$onMessageChannelReady;

    invoke-virtual {p2, p1}, Lo/MediaSessionCompatApi24$Callback;->onMessageChannelReady(Lo/setTextDelegate$onMessageChannelReady;)V

    return-void
.end method
