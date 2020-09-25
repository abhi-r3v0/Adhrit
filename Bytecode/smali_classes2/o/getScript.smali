.class final Lo/getScript;
.super Lo/getLanguage;
.source ""


# instance fields
.field private final ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:I

.field private asInterface:I

.field private onMessageChannelReady:I

.field private final onPostMessage:[B

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lo/getLanguage;-><init>(Lo/getRegion;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lo/getScript;->ICustomTabsCallback$Stub:I

    .line 3
    iput-object p1, p0, Lo/getScript;->onPostMessage:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lo/getScript;->onMessageChannelReady:I

    .line 5
    iput p2, p0, Lo/getScript;->onTransact:I

    .line 6
    iput p2, p0, Lo/getScript;->asInterface:I

    .line 7
    iput-boolean p4, p0, Lo/getScript;->ICustomTabsCallback:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLo/getRegion;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lo/getScript;-><init>([BIIZ)V

    return-void
.end method

.method private final onMessageChannelReady()V
    .locals 3

    .line 185
    iget v0, p0, Lo/getScript;->onMessageChannelReady:I

    iget v1, p0, Lo/getScript;->onRelationshipValidationResult:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/getScript;->onMessageChannelReady:I

    .line 186
    iget v1, p0, Lo/getScript;->asInterface:I

    sub-int v1, v0, v1

    .line 187
    iget v2, p0, Lo/getScript;->ICustomTabsCallback$Stub:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 188
    iput v1, p0, Lo/getScript;->onRelationshipValidationResult:I

    sub-int/2addr v0, v1

    .line 189
    iput v0, p0, Lo/getScript;->onMessageChannelReady:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lo/getScript;->onRelationshipValidationResult:I

    return-void
.end method


# virtual methods
.method public final extraCallback(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzir;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 178
    invoke-virtual {p0}, Lo/getLanguage;->onNavigationEvent()I

    move-result v0

    add-int/2addr p1, v0

    .line 179
    iget v0, p0, Lo/getScript;->ICustomTabsCallback$Stub:I

    if-gt p1, v0, :cond_0

    .line 182
    iput p1, p0, Lo/getScript;->ICustomTabsCallback$Stub:I

    .line 183
    invoke-direct {p0}, Lo/getScript;->onMessageChannelReady()V

    return v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzir;->onNavigationEvent()Lcom/google/android/gms/internal/firebase_auth/zzir;

    move-result-object p1

    throw p1

    .line 177
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzir;->onMessageChannelReady()Lcom/google/android/gms/internal/firebase_auth/zzir;

    move-result-object p1

    throw p1
.end method

.method public final onNavigationEvent()I
    .locals 2

    .line 196
    iget v0, p0, Lo/getScript;->onTransact:I

    iget v1, p0, Lo/getScript;->asInterface:I

    sub-int/2addr v0, v1

    return v0
.end method
