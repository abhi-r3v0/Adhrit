.class public final Lo/getMultiFactorInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMultiFactorInfo$extraCallback;,
        Lo/getMultiFactorInfo$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getMultiFactorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback:I

.field final asInterface:I

.field final extraCallback:Lo/setUrl;

.field final onMessageChannelReady:Lo/setUrl;

.field final onNavigationEvent:Lo/setUrl;

.field final onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lo/getMultiFactorInfo$5;

    invoke-direct {v0}, Lo/getMultiFactorInfo$5;-><init>()V

    sput-object v0, Lo/getMultiFactorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lo/setUrl;Lo/setUrl;Lo/setUrl;Lo/getMultiFactorInfo$onNavigationEvent;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 56
    iput-object p2, p0, Lo/getMultiFactorInfo;->extraCallback:Lo/setUrl;

    .line 57
    iput-object p3, p0, Lo/getMultiFactorInfo;->onNavigationEvent:Lo/setUrl;

    .line 58
    iput-object p4, p0, Lo/getMultiFactorInfo;->onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;

    .line 1132
    iget-object p4, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    iget-object v0, p3, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p4, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p4

    if-gtz p4, :cond_1

    .line 2132
    iget-object p3, p3, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    iget-object p4, p2, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p3, p4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p3

    if-gtz p3, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Lo/setUrl;->ICustomTabsCallback(Lo/setUrl;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lo/getMultiFactorInfo;->asInterface:I

    .line 66
    iget p2, p2, Lo/setUrl;->onPostMessage:I

    iget p1, p1, Lo/setUrl;->onPostMessage:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lo/getMultiFactorInfo;->ICustomTabsCallback:I

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "current Month cannot be after end Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start Month cannot be after current Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lo/setUrl;Lo/setUrl;Lo/setUrl;Lo/getMultiFactorInfo$onNavigationEvent;B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lo/getMultiFactorInfo;-><init>(Lo/setUrl;Lo/setUrl;Lo/setUrl;Lo/getMultiFactorInfo$onNavigationEvent;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 119
    :cond_0
    instance-of v1, p1, Lo/getMultiFactorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 122
    :cond_1
    check-cast p1, Lo/getMultiFactorInfo;

    .line 123
    iget-object v1, p0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    iget-object v3, p1, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/getMultiFactorInfo;->extraCallback:Lo/setUrl;

    iget-object v3, p1, Lo/getMultiFactorInfo;->extraCallback:Lo/setUrl;

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/getMultiFactorInfo;->onNavigationEvent:Lo/setUrl;

    iget-object v3, p1, Lo/getMultiFactorInfo;->onNavigationEvent:Lo/setUrl;

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/getMultiFactorInfo;->onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;

    iget-object p1, p1, Lo/getMultiFactorInfo;->onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;

    .line 126
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getMultiFactorInfo;->extraCallback:Lo/setUrl;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getMultiFactorInfo;->onNavigationEvent:Lo/setUrl;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getMultiFactorInfo;->onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 132
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 164
    iget-object p2, p0, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object p2, p0, Lo/getMultiFactorInfo;->extraCallback:Lo/setUrl;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object p2, p0, Lo/getMultiFactorInfo;->onNavigationEvent:Lo/setUrl;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget-object p2, p0, Lo/getMultiFactorInfo;->onPostMessage:Lo/getMultiFactorInfo$onNavigationEvent;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
