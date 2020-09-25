.class public final Lo/setStackedBackground;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setStackedBackground$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:F

.field public final asBinder:F

.field public final asInterface:F

.field public final extraCallback:Lo/setStackedBackground$ICustomTabsCallback;

.field public final newSession:Z

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:I

.field public final onPostMessage:F

.field public final onRelationshipValidationResult:I

.field public final onTransact:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLo/setStackedBackground$ICustomTabsCallback;IFFIIFZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/setStackedBackground;->ICustomTabsCallback:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lo/setStackedBackground;->onMessageChannelReady:Ljava/lang/String;

    .line 35
    iput p3, p0, Lo/setStackedBackground;->onPostMessage:F

    .line 36
    iput-object p4, p0, Lo/setStackedBackground;->extraCallback:Lo/setStackedBackground$ICustomTabsCallback;

    .line 37
    iput p5, p0, Lo/setStackedBackground;->onNavigationEvent:I

    .line 38
    iput p6, p0, Lo/setStackedBackground;->ICustomTabsCallback$Stub:F

    .line 39
    iput p7, p0, Lo/setStackedBackground;->asInterface:F

    .line 40
    iput p8, p0, Lo/setStackedBackground;->onTransact:I

    .line 41
    iput p9, p0, Lo/setStackedBackground;->onRelationshipValidationResult:I

    .line 42
    iput p10, p0, Lo/setStackedBackground;->asBinder:F

    .line 43
    iput-boolean p11, p0, Lo/setStackedBackground;->newSession:Z

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 5

    .line 49
    iget-object v0, p0, Lo/setStackedBackground;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v1, p0, Lo/setStackedBackground;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    .line 51
    iget v1, p0, Lo/setStackedBackground;->onPostMessage:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lo/setStackedBackground;->extraCallback:Lo/setStackedBackground$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget v1, p0, Lo/setStackedBackground;->onNavigationEvent:I

    add-int/2addr v0, v1

    .line 54
    iget v1, p0, Lo/setStackedBackground;->ICustomTabsCallback$Stub:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget v1, p0, Lo/setStackedBackground;->onTransact:I

    add-int/2addr v0, v1

    return v0
.end method
