.class final Lo/setCompoundDrawables;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageHelper;


# static fields
.field private static final extraCallback:Lo/setAnimationStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setAnimationStyle<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/ButtonBarLayout;

.field private final ICustomTabsCallback$Stub:I

.field private final asBinder:I

.field private final asInterface:Lo/AppCompatRadioButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AppCompatRadioButton<",
            "*>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/AppCompatImageHelper;

.field private final onPostMessage:Lo/AppCompatImageHelper;

.field private final onRelationshipValidationResult:Lo/applyFrameworkTintUsingColorFilter;

.field private final onTransact:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lo/setAnimationStyle;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lo/setAnimationStyle;-><init>(J)V

    sput-object v0, Lo/setCompoundDrawables;->extraCallback:Lo/setAnimationStyle;

    return-void
.end method

.method constructor <init>(Lo/ButtonBarLayout;Lo/AppCompatImageHelper;Lo/AppCompatImageHelper;IILo/AppCompatRadioButton;Ljava/lang/Class;Lo/applyFrameworkTintUsingColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ButtonBarLayout;",
            "Lo/AppCompatImageHelper;",
            "Lo/AppCompatImageHelper;",
            "II",
            "Lo/AppCompatRadioButton<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/setCompoundDrawables;->ICustomTabsCallback:Lo/ButtonBarLayout;

    .line 35
    iput-object p2, p0, Lo/setCompoundDrawables;->onMessageChannelReady:Lo/AppCompatImageHelper;

    .line 36
    iput-object p3, p0, Lo/setCompoundDrawables;->onPostMessage:Lo/AppCompatImageHelper;

    .line 37
    iput p4, p0, Lo/setCompoundDrawables;->asBinder:I

    .line 38
    iput p5, p0, Lo/setCompoundDrawables;->ICustomTabsCallback$Stub:I

    .line 39
    iput-object p6, p0, Lo/setCompoundDrawables;->asInterface:Lo/AppCompatRadioButton;

    .line 40
    iput-object p7, p0, Lo/setCompoundDrawables;->onTransact:Ljava/lang/Class;

    .line 41
    iput-object p8, p0, Lo/setCompoundDrawables;->onRelationshipValidationResult:Lo/applyFrameworkTintUsingColorFilter;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    instance-of v0, p1, Lo/setCompoundDrawables;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lo/setCompoundDrawables;

    .line 48
    iget v0, p0, Lo/setCompoundDrawables;->ICustomTabsCallback$Stub:I

    iget v2, p1, Lo/setCompoundDrawables;->ICustomTabsCallback$Stub:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/setCompoundDrawables;->asBinder:I

    iget v2, p1, Lo/setCompoundDrawables;->asBinder:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/setCompoundDrawables;->asInterface:Lo/AppCompatRadioButton;

    iget-object v2, p1, Lo/setCompoundDrawables;->asInterface:Lo/AppCompatRadioButton;

    .line 50
    invoke-static {v0, v2}, Lo/getHorizontalOffset;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCompoundDrawables;->onTransact:Ljava/lang/Class;

    iget-object v2, p1, Lo/setCompoundDrawables;->onTransact:Ljava/lang/Class;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCompoundDrawables;->onMessageChannelReady:Lo/AppCompatImageHelper;

    iget-object v2, p1, Lo/setCompoundDrawables;->onMessageChannelReady:Lo/AppCompatImageHelper;

    .line 52
    invoke-interface {v0, v2}, Lo/AppCompatImageHelper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCompoundDrawables;->onPostMessage:Lo/AppCompatImageHelper;

    iget-object v2, p1, Lo/setCompoundDrawables;->onPostMessage:Lo/AppCompatImageHelper;

    .line 53
    invoke-interface {v0, v2}, Lo/AppCompatImageHelper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCompoundDrawables;->onRelationshipValidationResult:Lo/applyFrameworkTintUsingColorFilter;

    iget-object p1, p1, Lo/setCompoundDrawables;->onRelationshipValidationResult:Lo/applyFrameworkTintUsingColorFilter;

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 61
    iget-object v0, p0, Lo/setCompoundDrawables;->onMessageChannelReady:Lo/AppCompatImageHelper;

    invoke-interface {v0}, Lo/AppCompatImageHelper;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lo/setCompoundDrawables;->onPostMessage:Lo/AppCompatImageHelper;

    invoke-interface {v1}, Lo/AppCompatImageHelper;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget v1, p0, Lo/setCompoundDrawables;->asBinder:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget v1, p0, Lo/setCompoundDrawables;->ICustomTabsCallback$Stub:I

    add-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Lo/setCompoundDrawables;->asInterface:Lo/AppCompatRadioButton;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lo/setCompoundDrawables;->onTransact:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lo/setCompoundDrawables;->onRelationshipValidationResult:Lo/applyFrameworkTintUsingColorFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lo/setCompoundDrawables;->ICustomTabsCallback:Lo/ButtonBarLayout;

    const-class v1, [B

    invoke-interface {v0, v1}, Lo/ButtonBarLayout;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 77
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lo/setCompoundDrawables;->asBinder:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lo/setCompoundDrawables;->ICustomTabsCallback$Stub:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 78
    iget-object v1, p0, Lo/setCompoundDrawables;->onPostMessage:Lo/AppCompatImageHelper;

    invoke-interface {v1, p1}, Lo/AppCompatImageHelper;->onNavigationEvent(Ljava/security/MessageDigest;)V

    .line 79
    iget-object v1, p0, Lo/setCompoundDrawables;->onMessageChannelReady:Lo/AppCompatImageHelper;

    invoke-interface {v1, p1}, Lo/AppCompatImageHelper;->onNavigationEvent(Ljava/security/MessageDigest;)V

    .line 80
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 81
    iget-object v1, p0, Lo/setCompoundDrawables;->asInterface:Lo/AppCompatRadioButton;

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v1, p1}, Lo/AppCompatRadioButton;->onNavigationEvent(Ljava/security/MessageDigest;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lo/setCompoundDrawables;->onRelationshipValidationResult:Lo/applyFrameworkTintUsingColorFilter;

    invoke-virtual {v1, p1}, Lo/applyFrameworkTintUsingColorFilter;->onNavigationEvent(Ljava/security/MessageDigest;)V

    .line 1090
    sget-object v1, Lo/setCompoundDrawables;->extraCallback:Lo/setAnimationStyle;

    iget-object v2, p0, Lo/setCompoundDrawables;->onTransact:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lo/setAnimationStyle;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_1

    .line 1092
    iget-object v1, p0, Lo/setCompoundDrawables;->onTransact:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lo/setCompoundDrawables;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 1093
    sget-object v2, Lo/setCompoundDrawables;->extraCallback:Lo/setAnimationStyle;

    iget-object v3, p0, Lo/setCompoundDrawables;->onTransact:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Lo/setAnimationStyle;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    iget-object p1, p0, Lo/setCompoundDrawables;->ICustomTabsCallback:Lo/ButtonBarLayout;

    invoke-interface {p1, v0}, Lo/ButtonBarLayout;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setCompoundDrawables;->onMessageChannelReady:Lo/AppCompatImageHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCompoundDrawables;->onPostMessage:Lo/AppCompatImageHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/setCompoundDrawables;->asBinder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/setCompoundDrawables;->ICustomTabsCallback$Stub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCompoundDrawables;->onTransact:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCompoundDrawables;->asInterface:Lo/AppCompatRadioButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setCompoundDrawables;->onRelationshipValidationResult:Lo/applyFrameworkTintUsingColorFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
