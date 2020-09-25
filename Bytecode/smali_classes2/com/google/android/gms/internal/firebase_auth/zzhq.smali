.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzhq;
.super Lo/CsatResponse;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;,
        Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Z

.field private static final onPostMessage:Ljava/util/logging/Logger;


# instance fields
.field public extraCallback:Lo/setScript;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const-class v0, Lcom/google/android/gms/internal/firebase_auth/zzhq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage:Ljava/util/logging/Logger;

    .line 164
    invoke-static {}, Lo/getPhoneCountry;->ICustomTabsCallback()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onNavigationEvent:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/CsatResponse;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/setLanguage;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(IF)I
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static ICustomTabsCallback(IJ)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback(ILjava/lang/String;)I
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback(ILo/delivered;)I
    .locals 1

    .line 50
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    .line 51
    invoke-virtual {p1}, Lo/delivered;->onNavigationEvent()I

    move-result p1

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static ICustomTabsCallback(ILo/setMandatory;)I
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    .line 47
    invoke-virtual {p1}, Lo/setMandatory;->onPostMessage()I

    move-result p1

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static ICustomTabsCallback(IZ)I
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static ICustomTabsCallback(Lo/access$502;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-interface {p0}, Lo/access$502;->onMessageChannelReady()I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static ICustomTabsCallback([B)Lcom/google/android/gms/internal/firebase_auth/zzhq;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq$ICustomTabsCallback;-><init>([BII)V

    return-object v1
.end method

.method public static ICustomTabsCallback$Stub(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static ICustomTabsCallback$Stub(II)I
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsService(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback$Stub(IJ)I
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static ICustomTabsService(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static asBinder(I)I
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsService(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result p0

    return p0
.end method

.method public static asBinder(II)I
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static asBinder(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static asInterface(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static asInterface(II)I
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static asInterface(IJ)I
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asBinder(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static asInterface(J)I
    .locals 0

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asBinder(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(J)I

    move-result p0

    return p0
.end method

.method public static extraCallback(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static extraCallback(ILo/access$502;Lo/setReplacementStr;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 152
    check-cast p1, Lo/Csat;

    .line 153
    invoke-virtual {p1}, Lo/Csat;->onPostMessage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 155
    invoke-interface {p2, p1}, Lo/setReplacementStr;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    .line 156
    invoke-virtual {p1, v0}, Lo/Csat;->onNavigationEvent(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static extraCallback(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static extraCallback(Ljava/lang/String;)I
    .locals 1

    .line 109
    :try_start_0
    invoke-static {p0}, Lo/User;->extraCallback(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lo/getLocale; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    sget-object v0, Lo/fromString;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 113
    array-length p0, p0

    .line 115
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static extraCallback(Lo/access$502;Lo/setReplacementStr;)I
    .locals 2

    .line 129
    check-cast p0, Lo/Csat;

    .line 130
    invoke-virtual {p0}, Lo/Csat;->onPostMessage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 132
    invoke-interface {p1, p0}, Lo/setReplacementStr;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lo/Csat;->onNavigationEvent(I)V

    .line 136
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static extraCallback(Lo/setMandatory;)I
    .locals 1

    .line 120
    invoke-virtual {p0}, Lo/setMandatory;->onPostMessage()I

    move-result p0

    .line 121
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static extraCallback([B)I
    .locals 1

    .line 123
    array-length p0, p0

    .line 124
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getInterfaceDescriptor(I)I
    .locals 0

    .line 108
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(I)I

    move-result p0

    return p0
.end method

.method public static getInterfaceDescriptor(II)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static newSession(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result p0

    return p0
.end method

.method public static onMessageChannelReady(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static onMessageChannelReady(ILo/access$502;Lo/setReplacementStr;)I
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(Lo/access$502;Lo/setReplacementStr;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onMessageChannelReady(Lo/access$502;)I
    .locals 1

    .line 126
    invoke-interface {p0}, Lo/access$502;->onMessageChannelReady()I

    move-result p0

    .line 127
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic onMessageChannelReady()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onNavigationEvent:Z

    return v0
.end method

.method public static onNavigationEvent(ILo/access$502;)I
    .locals 2

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 56
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onMessageChannelReady(Lo/access$502;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static onNavigationEvent(ILo/setMandatory;)I
    .locals 2

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 62
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 63
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onPostMessage(ID)I
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static onPostMessage(IJ)I
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static onPostMessage(ILo/delivered;)I
    .locals 2

    const/4 v0, 0x1

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 66
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 67
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/delivered;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onPostMessage(J)I
    .locals 0

    .line 87
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(J)I

    move-result p0

    return p0
.end method

.method public static onPostMessage(Lo/delivered;)I
    .locals 1

    .line 117
    invoke-virtual {p0}, Lo/delivered;->onNavigationEvent()I

    move-result p0

    .line 118
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static onRelationshipValidationResult(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static onRelationshipValidationResult(II)I
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static onRelationshipValidationResult(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static onTransact(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static onTransact(II)I
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static onTransact(IJ)I
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static onTransact(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsCallback(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onNavigationEvent(I)V

    return-void
.end method

.method public abstract ICustomTabsCallback(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final ICustomTabsCallback(Ljava/lang/String;Lo/getLocale;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget-object p2, Lo/fromString;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 145
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    const/4 p2, 0x0

    .line 146
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lo/CsatResponse;->ICustomTabsCallback([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/firebase_auth/zzhq$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 150
    throw p1

    :catch_1
    move-exception p1

    .line 149
    new-instance p2, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq$zza;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract extraCallback(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(ILo/access$502;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(Lo/access$502;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(ILo/setMandatory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onMessageChannelReady(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asBinder(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(J)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onMessageChannelReady(B)V

    return-void
.end method

.method public abstract onMessageChannelReady([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final onNavigationEvent(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(IJ)V

    return-void
.end method

.method public final onNavigationEvent(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsService(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(II)V

    return-void
.end method

.method public final onNavigationEvent(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asBinder(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onMessageChannelReady(IJ)V

    return-void
.end method

.method public abstract onNavigationEvent(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/setMandatory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage()I
.end method

.method public final onPostMessage(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onNavigationEvent(J)V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsService(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(I)V

    return-void
.end method

.method public final onPostMessage(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onMessageChannelReady(II)V

    return-void
.end method

.method public abstract onPostMessage(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(ILo/access$502;Lo/setReplacementStr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(ILo/setMandatory;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
