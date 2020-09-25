.class public Lo/InstrumentAction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/InstrumentAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICustomTabsService$Stub:Lo/InstrumentAction;


# instance fields
.field public final IPostMessageService:Ljava/lang/String;

.field public final IPostMessageService$Stub$Proxy:I

.field public final cancel:I

.field public final cancelAll:Z

.field public final notify:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lo/InstrumentAction;

    invoke-direct {v0}, Lo/InstrumentAction;-><init>()V

    sput-object v0, Lo/InstrumentAction;->ICustomTabsService$Stub:Lo/InstrumentAction;

    .line 259
    new-instance v0, Lo/InstrumentAction$5;

    invoke-direct {v0}, Lo/InstrumentAction$5;-><init>()V

    sput-object v0, Lo/InstrumentAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 171
    invoke-direct/range {v0 .. v5}, Lo/InstrumentAction;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/InstrumentAction;->IPostMessageService:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/InstrumentAction;->notify:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/InstrumentAction;->cancel:I

    .line 201
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lo/InstrumentAction;->cancelAll:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/InstrumentAction;->IPostMessageService$Stub$Proxy:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/InstrumentAction;->IPostMessageService:Ljava/lang/String;

    .line 189
    invoke-static {p2}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/InstrumentAction;->notify:Ljava/lang/String;

    .line 190
    iput p3, p0, Lo/InstrumentAction;->cancel:I

    .line 191
    iput-boolean p4, p0, Lo/InstrumentAction;->cancelAll:Z

    .line 192
    iput p5, p0, Lo/InstrumentAction;->IPostMessageService$Stub$Proxy:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    check-cast p1, Lo/InstrumentAction;

    .line 220
    iget-object v2, p0, Lo/InstrumentAction;->IPostMessageService:Ljava/lang/String;

    iget-object v3, p1, Lo/InstrumentAction;->IPostMessageService:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/InstrumentAction;->notify:Ljava/lang/String;

    iget-object v3, p1, Lo/InstrumentAction;->notify:Ljava/lang/String;

    .line 222
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lo/InstrumentAction;->cancel:I

    iget v3, p1, Lo/InstrumentAction;->cancel:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lo/InstrumentAction;->cancelAll:Z

    iget-boolean v3, p1, Lo/InstrumentAction;->cancelAll:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/InstrumentAction;->IPostMessageService$Stub$Proxy:I

    iget p1, p1, Lo/InstrumentAction;->IPostMessageService$Stub$Proxy:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 232
    iget-object v0, p0, Lo/InstrumentAction;->IPostMessageService:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 234
    iget-object v2, p0, Lo/InstrumentAction;->notify:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 235
    iget v1, p0, Lo/InstrumentAction;->cancel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 236
    iget-boolean v1, p0, Lo/InstrumentAction;->cancelAll:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget v1, p0, Lo/InstrumentAction;->IPostMessageService$Stub$Proxy:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 251
    iget-object p2, p0, Lo/InstrumentAction;->IPostMessageService:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object p2, p0, Lo/InstrumentAction;->notify:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget p2, p0, Lo/InstrumentAction;->cancel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-boolean p2, p0, Lo/InstrumentAction;->cancelAll:Z

    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/os/Parcel;Z)V

    .line 256
    iget p2, p0, Lo/InstrumentAction;->IPostMessageService$Stub$Proxy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
