.class final Lo/getIControllerCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/getIControllerCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback:[I

.field final ICustomTabsCallback$Stub:I

.field final ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final asBinder:I

.field final asInterface:Ljava/lang/String;

.field final extraCallback:I

.field final getInterfaceDescriptor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final newSession:Z

.field final onMessageChannelReady:[I

.field final onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:[I

.field final onRelationshipValidationResult:Ljava/lang/CharSequence;

.field final onTransact:I

.field final warmup:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lo/getIControllerCallback$5;

    invoke-direct {v0}, Lo/getIControllerCallback$5;-><init>()V

    sput-object v0, Lo/getIControllerCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lo/getIControllerCallback;->onNavigationEvent:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lo/getIControllerCallback;->onMessageChannelReady:[I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lo/getIControllerCallback;->onPostMessage:[I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getIControllerCallback;->extraCallback:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getIControllerCallback;->asInterface:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getIControllerCallback;->onTransact:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getIControllerCallback;->asBinder:I

    .line 92
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lo/getIControllerCallback;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/getIControllerCallback;->ICustomTabsCallback$Stub:I

    .line 94
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lo/getIControllerCallback;->warmup:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lo/getIControllerCallback;->getInterfaceDescriptor:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lo/getIControllerCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/getIControllerCallback;->newSession:Z

    return-void
.end method

.method public constructor <init>(Lo/binderDied;)V
    .locals 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    .line 50
    new-array v1, v1, [I

    iput-object v1, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    .line 52
    iget-boolean v1, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    if-eqz v1, :cond_2

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lo/getIControllerCallback;->onNavigationEvent:Ljava/util/ArrayList;

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Lo/getIControllerCallback;->onMessageChannelReady:[I

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Lo/getIControllerCallback;->onPostMessage:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 61
    iget-object v3, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 62
    iget-object v4, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    aput v6, v4, v2

    .line 63
    iget-object v2, p0, Lo/getIControllerCallback;->onNavigationEvent:Ljava/util/ArrayList;

    iget-object v4, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    aput v6, v2, v5

    .line 65
    iget-object v2, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    aput v6, v2, v4

    .line 66
    iget-object v2, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    aput v6, v2, v5

    .line 67
    iget-object v2, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    aput v6, v2, v4

    .line 68
    iget-object v2, p0, Lo/getIControllerCallback;->onMessageChannelReady:[I

    iget-object v4, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asInterface:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v4, v2, v1

    .line 69
    iget-object v2, p0, Lo/getIControllerCallback;->onPostMessage:[I

    iget-object v3, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asBinder:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 71
    :cond_1
    iget v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->asInterface:I

    iput v0, p0, Lo/getIControllerCallback;->extraCallback:I

    .line 72
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v0, p0, Lo/getIControllerCallback;->asInterface:Ljava/lang/String;

    .line 73
    iget v0, p1, Lo/binderDied;->onNavigationEvent:I

    iput v0, p0, Lo/getIControllerCallback;->onTransact:I

    .line 74
    iget v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->warmup:I

    iput v0, p0, Lo/getIControllerCallback;->asBinder:I

    .line 75
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsService:Ljava/lang/CharSequence;

    iput-object v0, p0, Lo/getIControllerCallback;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    .line 76
    iget v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->getInterfaceDescriptor:I

    iput v0, p0, Lo/getIControllerCallback;->ICustomTabsCallback$Stub:I

    .line 77
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->newSession:Ljava/lang/CharSequence;

    iput-object v0, p0, Lo/getIControllerCallback;->warmup:Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    iput-object v0, p0, Lo/getIControllerCallback;->getInterfaceDescriptor:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    iput-object v0, p0, Lo/getIControllerCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    .line 80
    iget-boolean p1, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    iput-boolean p1, p0, Lo/getIControllerCallback;->newSession:Z

    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(Lo/requestExtraBinder;)Lo/binderDied;
    .locals 7

    .line 101
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    :goto_0
    iget-object v3, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 105
    new-instance v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>()V

    .line 106
    iget-object v4, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    const/4 v1, 0x2

    .line 107
    invoke-static {v1}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Instantiate "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " op #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " base fragment #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "FragmentManager"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v1, p0, Lo/getIControllerCallback;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 2698
    iget-object v6, p1, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 3269
    iget-object v6, v6, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v1, :cond_1

    .line 4134
    iget-object v4, v1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 114
    :cond_1
    iput-object v4, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 116
    :cond_2
    iput-object v4, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 118
    :goto_1
    invoke-static {}, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->values()[Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    iget-object v4, p0, Lo/getIControllerCallback;->onMessageChannelReady:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asInterface:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 119
    invoke-static {}, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->values()[Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    iget-object v4, p0, Lo/getIControllerCallback;->onPostMessage:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asBinder:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 120
    iget-object v1, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    .line 121
    iget-object v1, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    .line 122
    iget-object v1, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 123
    iget-object v1, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    .line 124
    iget v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    .line 125
    iget v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    .line 126
    iget v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    .line 127
    iget v1, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    .line 128
    invoke-virtual {v0, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto/16 :goto_0

    .line 131
    :cond_3
    iget p1, p0, Lo/getIControllerCallback;->extraCallback:I

    iput p1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asInterface:I

    .line 132
    iget-object p1, p0, Lo/getIControllerCallback;->asInterface:Ljava/lang/String;

    iput-object p1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 133
    iget p1, p0, Lo/getIControllerCallback;->onTransact:I

    iput p1, v0, Lo/binderDied;->onNavigationEvent:I

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 135
    iget v1, p0, Lo/getIControllerCallback;->asBinder:I

    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->warmup:I

    .line 136
    iget-object v1, p0, Lo/getIControllerCallback;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    iput-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsService:Ljava/lang/CharSequence;

    .line 137
    iget v1, p0, Lo/getIControllerCallback;->ICustomTabsCallback$Stub:I

    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->getInterfaceDescriptor:I

    .line 138
    iget-object v1, p0, Lo/getIControllerCallback;->warmup:Ljava/lang/CharSequence;

    iput-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->newSession:Ljava/lang/CharSequence;

    .line 139
    iget-object v1, p0, Lo/getIControllerCallback;->getInterfaceDescriptor:Ljava/util/ArrayList;

    iput-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    .line 140
    iget-object v1, p0, Lo/getIControllerCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    iput-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    .line 141
    iget-boolean v1, p0, Lo/getIControllerCallback;->newSession:Z

    iput-boolean v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 142
    invoke-virtual {v0, p1}, Lo/binderDied;->extraCallback(I)V

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 153
    iget-object p2, p0, Lo/getIControllerCallback;->ICustomTabsCallback:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    iget-object p2, p0, Lo/getIControllerCallback;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object p2, p0, Lo/getIControllerCallback;->onMessageChannelReady:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    iget-object p2, p0, Lo/getIControllerCallback;->onPostMessage:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget p2, p0, Lo/getIControllerCallback;->extraCallback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object p2, p0, Lo/getIControllerCallback;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget p2, p0, Lo/getIControllerCallback;->onTransact:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget p2, p0, Lo/getIControllerCallback;->asBinder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object p2, p0, Lo/getIControllerCallback;->onRelationshipValidationResult:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 162
    iget p2, p0, Lo/getIControllerCallback;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Lo/getIControllerCallback;->warmup:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 164
    iget-object p2, p0, Lo/getIControllerCallback;->getInterfaceDescriptor:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 165
    iget-object p2, p0, Lo/getIControllerCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    iget-boolean p2, p0, Lo/getIControllerCallback;->newSession:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
