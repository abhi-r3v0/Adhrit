.class public final Lo/PaymentConfig$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PaymentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/PaymentConfig$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lo/PaymentConfig$onNavigationEvent$2;

    invoke-direct {v0}, Lo/PaymentConfig$onNavigationEvent$2;-><init>()V

    sput-object v0, Lo/PaymentConfig$onNavigationEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Lo/PaymentConfig$onNavigationEvent;->onMessageChannelReady:J

    .line 76
    iput-object p3, p0, Lo/PaymentConfig$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lo/PaymentConfig$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lo/PaymentConfig$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lo/PaymentConfig$onNavigationEvent;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lo/PaymentConfig$onNavigationEvent;->onMessageChannelReady:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/PaymentConfig$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/PaymentConfig$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/PaymentConfig$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/PaymentConfig$onNavigationEvent;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    check-cast p1, Lo/PaymentConfig$onNavigationEvent;

    .line 99
    iget-wide v2, p0, Lo/PaymentConfig$onNavigationEvent;->onMessageChannelReady:J

    iget-wide v4, p1, Lo/PaymentConfig$onNavigationEvent;->onMessageChannelReady:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lo/PaymentConfig$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    iget-object v3, p1, Lo/PaymentConfig$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 100
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/PaymentConfig$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/PaymentConfig$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 101
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/PaymentConfig$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/PaymentConfig$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 102
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/PaymentConfig$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/PaymentConfig$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 103
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 108
    iget-wide v0, p0, Lo/PaymentConfig$onNavigationEvent;->onMessageChannelReady:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 109
    iget-object v0, p0, Lo/PaymentConfig$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 110
    iget-object v0, p0, Lo/PaymentConfig$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 111
    iget-object v0, p0, Lo/PaymentConfig$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 112
    iget-object v0, p0, Lo/PaymentConfig$onNavigationEvent;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 125
    iget-wide v0, p0, Lo/PaymentConfig$onNavigationEvent;->onMessageChannelReady:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-object p2, p0, Lo/PaymentConfig$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lo/PaymentConfig$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lo/PaymentConfig$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lo/PaymentConfig$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
