.class public final Lo/setStartIconTintMode;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setStartIconTintMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:[[B


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:[[B

.field private final asBinder:[I

.field private final asInterface:[[B

.field private final onMessageChannelReady:[[B

.field private final onNavigationEvent:[B

.field private final onPostMessage:[[B

.field private final onRelationshipValidationResult:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lo/setEndIconContentDescription;

    invoke-direct {v0}, Lo/setEndIconContentDescription;-><init>()V

    sput-object v0, Lo/setStartIconTintMode;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v0, v0, [[B

    sput-object v0, Lo/setStartIconTintMode;->extraCallback:[[B

    new-instance v1, Lo/setStartIconTintMode;

    sget-object v7, Lo/setStartIconTintMode;->extraCallback:[[B

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v1 .. v9}, Lo/setStartIconTintMode;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V

    new-instance v0, Lo/setEndIconOnLongClickListener;

    invoke-direct {v0}, Lo/setEndIconOnLongClickListener;-><init>()V

    new-instance v0, Lo/setEndIconMode;

    invoke-direct {v0}, Lo/setEndIconMode;-><init>()V

    new-instance v0, Lo/setEndIconVisible;

    invoke-direct {v0}, Lo/setEndIconVisible;-><init>()V

    new-instance v0, Lo/setEndIconCheckable;

    invoke-direct {v0}, Lo/setEndIconCheckable;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput-object p1, p0, Lo/setStartIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/setStartIconTintMode;->onNavigationEvent:[B

    iput-object p3, p0, Lo/setStartIconTintMode;->onPostMessage:[[B

    iput-object p4, p0, Lo/setStartIconTintMode;->onMessageChannelReady:[[B

    iput-object p5, p0, Lo/setStartIconTintMode;->ICustomTabsCallback$Stub:[[B

    iput-object p6, p0, Lo/setStartIconTintMode;->onRelationshipValidationResult:[[B

    iput-object p7, p0, Lo/setStartIconTintMode;->asBinder:[I

    iput-object p8, p0, Lo/setStartIconTintMode;->asInterface:[[B

    return-void
.end method

.method private static extraCallback(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    aget-object v3, p2, v2

    if-nez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string p1, ")"

    goto :goto_0
.end method

.method private static onMessageChannelReady([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static onNavigationEvent([[B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lo/setStartIconTintMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lo/setStartIconTintMode;

    iget-object v0, p0, Lo/setStartIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p1, Lo/setStartIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v2}, Lo/setEndIconTintList;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setStartIconTintMode;->onNavigationEvent:[B

    iget-object v2, p1, Lo/setStartIconTintMode;->onNavigationEvent:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setStartIconTintMode;->onPostMessage:[[B

    invoke-static {v0}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lo/setStartIconTintMode;->onPostMessage:[[B

    invoke-static {v2}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lo/setEndIconTintList;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setStartIconTintMode;->onMessageChannelReady:[[B

    invoke-static {v0}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lo/setStartIconTintMode;->onMessageChannelReady:[[B

    invoke-static {v2}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lo/setEndIconTintList;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setStartIconTintMode;->ICustomTabsCallback$Stub:[[B

    invoke-static {v0}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lo/setStartIconTintMode;->ICustomTabsCallback$Stub:[[B

    invoke-static {v2}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lo/setEndIconTintList;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setStartIconTintMode;->onRelationshipValidationResult:[[B

    invoke-static {v0}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lo/setStartIconTintMode;->onRelationshipValidationResult:[[B

    invoke-static {v2}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lo/setEndIconTintList;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setStartIconTintMode;->asBinder:[I

    invoke-static {v0}, Lo/setStartIconTintMode;->onMessageChannelReady([I)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lo/setStartIconTintMode;->asBinder:[I

    invoke-static {v2}, Lo/setStartIconTintMode;->onMessageChannelReady([I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lo/setEndIconTintList;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setStartIconTintMode;->asInterface:[[B

    invoke-static {v0}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lo/setStartIconTintMode;->asInterface:[[B

    invoke-static {p1}, Lo/setStartIconTintMode;->onNavigationEvent([[B)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lo/setEndIconTintList;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperimentTokens"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/setStartIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "null"

    const-string v4, "\'"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo/setStartIconTintMode;->onNavigationEvent:[B

    const-string v6, "direct"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/setStartIconTintMode;->onPostMessage:[[B

    const-string v5, "GAIA"

    invoke-static {v0, v5, v4}, Lo/setStartIconTintMode;->extraCallback(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/setStartIconTintMode;->onMessageChannelReady:[[B

    const-string v5, "PSEUDO"

    invoke-static {v0, v5, v4}, Lo/setStartIconTintMode;->extraCallback(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/setStartIconTintMode;->ICustomTabsCallback$Stub:[[B

    const-string v5, "ALWAYS"

    invoke-static {v0, v5, v4}, Lo/setStartIconTintMode;->extraCallback(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/setStartIconTintMode;->onRelationshipValidationResult:[[B

    const-string v5, "OTHER"

    invoke-static {v0, v5, v4}, Lo/setStartIconTintMode;->extraCallback(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/setStartIconTintMode;->asBinder:[I

    const-string v5, "weak"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_4

    aget v8, v4, v7

    if-nez v6, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setStartIconTintMode;->asInterface:[[B

    const-string v2, "directs"

    invoke-static {v0, v2, v1}, Lo/setStartIconTintMode;->extraCallback(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const p2, -0xb0bb

    .line 2008
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 2009
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget-object v1, p0, Lo/setStartIconTintMode;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lo/setStartIconTintMode;->onNavigationEvent:[B

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lo/setStartIconTintMode;->onPostMessage:[[B

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;I[[BZ)V

    iget-object v1, p0, Lo/setStartIconTintMode;->onMessageChannelReady:[[B

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;I[[BZ)V

    iget-object v1, p0, Lo/setStartIconTintMode;->ICustomTabsCallback$Stub:[[B

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;I[[BZ)V

    iget-object v1, p0, Lo/setStartIconTintMode;->onRelationshipValidationResult:[[B

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;I[[BZ)V

    iget-object v1, p0, Lo/setStartIconTintMode;->asBinder:[I

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;I[IZ)V

    iget-object v1, p0, Lo/setStartIconTintMode;->asInterface:[[B

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/os/Parcel;I[[BZ)V

    .line 3011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v1, p2, v0

    sub-int/2addr v0, v2

    .line 3013
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3014
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
