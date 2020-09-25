.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
.super Lo/getTags;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static onPostMessage:Lo/component15;


# instance fields
.field private final ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Ljava/lang/String;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService:Ljava/lang/String;

.field private asBinder:Ljava/lang/String;

.field private asInterface:Ljava/lang/String;

.field private extraCallback:Ljava/lang/String;

.field private newSession:Ljava/lang/String;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Ljava/lang/String;

.field private onRelationshipValidationResult:J

.field private onTransact:Landroid/net/Uri;

.field private warmup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lo/OrderItemJsonAdapter;

    invoke-direct {v0}, Lo/OrderItemJsonAdapter;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20001
    sget-object v0, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 164
    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onPostMessage:Lo/component15;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    .line 43
    iput p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback:I

    .line 44
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->extraCallback:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->asBinder:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->asInterface:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onTransact:Landroid/net/Uri;

    .line 49
    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onMessageChannelReady:Ljava/lang/String;

    .line 50
    iput-wide p8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onRelationshipValidationResult:J

    .line 51
    iput-object p10, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onNavigationEvent:Ljava/lang/String;

    .line 52
    iput-object p11, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->warmup:Ljava/util/List;

    .line 53
    iput-object p12, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsService:Ljava/lang/String;

    .line 54
    iput-object p13, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->newSession:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic extraCallback(Lcom/google/android/gms/common/api/Scope;Lcom/google/android/gms/common/api/Scope;)I
    .locals 0

    .line 18008
    iget-object p0, p0, Lcom/google/android/gms/common/api/Scope;->onMessageChannelReady:Ljava/lang/String;

    .line 19008
    iget-object p1, p1, Lcom/google/android/gms/common/api/Scope;->onMessageChannelReady:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 118
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 120
    :cond_1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 122
    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onNavigationEvent:Ljava/lang/String;

    .line 124
    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onNavigationEvent:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6071
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->warmup:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6072
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7071
    new-instance p1, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->warmup:Ljava/util/List;

    invoke-direct {p1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7072
    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onNavigationEvent:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 5071
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->warmup:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5072
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()Landroid/accounts/Account;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onNavigationEvent()Lorg/json/JSONObject;
    .locals 6

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8056
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->extraCallback:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "id"

    .line 9056
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->extraCallback:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9057
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->asBinder:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "tokenId"

    .line 10057
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->asBinder:Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10058
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "email"

    .line 11058
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11060
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->asInterface:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "displayName"

    .line 12060
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->asInterface:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12061
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsService:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "givenName"

    .line 13061
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsService:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13062
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->newSession:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "familyName"

    .line 14062
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->newSession:Ljava/lang/String;

    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14063
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onTransact:Landroid/net/Uri;

    if-eqz v1, :cond_6

    const-string v1, "photoUrl"

    .line 15063
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onTransact:Landroid/net/Uri;

    .line 145
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15067
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string/jumbo v1, "serverAuthCode"

    .line 16067
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onMessageChannelReady:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v1, "expirationTime"

    .line 148
    iget-wide v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onRelationshipValidationResult:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "obfuscatedIdentifier"

    .line 150
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onNavigationEvent:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 153
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->warmup:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->warmup:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/api/Scope;

    .line 154
    sget-object v3, Lo/component12;->onPostMessage:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 155
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    aget-object v5, v2, v4

    .line 17008
    iget-object v5, v5, Lcom/google/android/gms/common/api/Scope;->onMessageChannelReady:Ljava/lang/String;

    .line 156
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    const-string v2, "grantedScopes"

    .line 158
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onPostMessage()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->warmup:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub$Proxy:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const v0, -0xb0bb

    .line 2008
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 2009
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 76
    iget v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 2039
    invoke-static {p1, v4, v3}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 2040
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2056
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->extraCallback:Ljava/lang/String;

    const/4 v4, 0x2

    .line 79
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 2057
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->asBinder:Ljava/lang/String;

    const/4 v4, 0x3

    .line 82
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 2058
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 85
    invoke-static {p1, v3, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 2060
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->asInterface:Ljava/lang/String;

    const/4 v4, 0x5

    .line 88
    invoke-static {p1, v4, v2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 2063
    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onTransact:Landroid/net/Uri;

    const/4 v4, 0x6

    .line 91
    invoke-static {p1, v4, v2, p2, v0}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 2067
    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x7

    .line 94
    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 96
    iget-wide v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onRelationshipValidationResult:J

    const/16 p2, 0x8

    .line 3049
    invoke-static {p1, p2, p2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;II)V

    .line 3050
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onNavigationEvent:Ljava/lang/String;

    const/16 v2, 0x9

    .line 101
    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 102
    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->warmup:Ljava/util/List;

    const/16 v2, 0xa

    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 3061
    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->ICustomTabsService:Ljava/lang/String;

    const/16 v2, 0xb

    .line 105
    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3062
    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->newSession:Ljava/lang/String;

    const/16 v2, 0xc

    .line 108
    invoke-static {p1, v2, p2, v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5011
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    sub-int v0, p2, v1

    sub-int/2addr v1, v3

    .line 5013
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5014
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5015
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
