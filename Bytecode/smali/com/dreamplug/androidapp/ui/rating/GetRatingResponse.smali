.class public final Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse$extraCallback;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0001\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\rH\u00c6\u0003Jc\u0010!\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0003\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\n\u0008\u0003\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u00d6\u0003J\t\u0010(\u001a\u00020#H\u00d6\u0001J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020#H\u00d6\u0001R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\u00a8\u0006/"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;",
        "Landroid/os/Parcelable;",
        "entityType",
        "",
        "eventName",
        "header",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "ratingTags",
        "",
        "Lcom/dreamplug/androidapp/ui/rating/RatingTags;",
        "ratingType",
        "subHeader",
        "background",
        "Lcom/dreamplug/androidapp/ui/rating/Background;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/textformatter/EncodedStringWrapper;Ljava/util/List;Ljava/lang/String;Lcom/dreamplug/textformatter/EncodedStringWrapper;Lcom/dreamplug/androidapp/ui/rating/Background;)V",
        "getBackground",
        "()Lcom/dreamplug/androidapp/ui/rating/Background;",
        "getEntityType",
        "()Ljava/lang/String;",
        "getEventName",
        "getHeader",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getRatingTags",
        "()Ljava/util/List;",
        "getRatingType",
        "getSubHeader",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/ui/rating/Background;

.field public final extraCallback:Lo/getTargetScrollPosition;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/rating/RatingTags;",
            ">;"
        }
    .end annotation
.end field

.field public final onTransact:Lo/getTargetScrollPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse$extraCallback;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse$extraCallback;-><init>()V

    sput-object v0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/getTargetScrollPosition;Ljava/util/List;Ljava/lang/String;Lo/getTargetScrollPosition;Lcom/dreamplug/androidapp/ui/rating/Background;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "entity_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "event_name"
        .end annotation
    .end param
    .param p3    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "rating_tags"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "rating_type"
        .end annotation
    .end param
    .param p6    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sub_header"
        .end annotation
    .end param
    .param p7    # Lcom/dreamplug/androidapp/ui/rating/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/getTargetScrollPosition;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/rating/RatingTags;",
            ">;",
            "Ljava/lang/String;",
            "Lo/getTargetScrollPosition;",
            "Lcom/dreamplug/androidapp/ui/rating/Background;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->extraCallback:Lo/getTargetScrollPosition;

    iput-object p4, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onPostMessage:Ljava/util/List;

    iput-object p5, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onMessageChannelReady:Ljava/lang/String;

    iput-object p6, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onTransact:Lo/getTargetScrollPosition;

    iput-object p7, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/ui/rating/Background;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lo/getTargetScrollPosition;Ljava/util/List;Ljava/lang/String;Lo/getTargetScrollPosition;Lcom/dreamplug/androidapp/ui/rating/Background;)Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "entity_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "event_name"
        .end annotation
    .end param
    .param p3    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "rating_tags"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "rating_type"
        .end annotation
    .end param
    .param p6    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "sub_header"
        .end annotation
    .end param
    .param p7    # Lcom/dreamplug/androidapp/ui/rating/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/getTargetScrollPosition;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/rating/RatingTags;",
            ">;",
            "Ljava/lang/String;",
            "Lo/getTargetScrollPosition;",
            "Lcom/dreamplug/androidapp/ui/rating/Background;",
            ")",
            "Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;"
        }
    .end annotation

    new-instance v8, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/getTargetScrollPosition;Ljava/util/List;Ljava/lang/String;Lo/getTargetScrollPosition;Lcom/dreamplug/androidapp/ui/rating/Background;)V

    return-object v8
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->extraCallback:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->extraCallback:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onPostMessage:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onPostMessage:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onTransact:Lo/getTargetScrollPosition;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onTransact:Lo/getTargetScrollPosition;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/ui/rating/Background;

    iget-object p1, p1, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/ui/rating/Background;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onNavigationEvent:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onPostMessage:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onTransact:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/ui/rating/Background;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetRatingResponse(entityType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onTransact:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/ui/rating/Background;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->extraCallback:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onPostMessage:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/androidapp/ui/rating/RatingTags;

    invoke-interface {v3, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->onTransact:Lo/getTargetScrollPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/dreamplug/androidapp/ui/rating/GetRatingResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/androidapp/ui/rating/Background;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
