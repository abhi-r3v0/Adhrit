.class public final Lo/signInWithCustomToken;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPersistenceKey;


# static fields
.field private static final ICustomTabsCallback:[I

.field private static final extraCallback:[I

.field private static final onNavigationEvent:[I

.field private static final onPostMessage:[I


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 44
    sget v2, Lo/toStringMap$extraCallback;->colorPrimary:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lo/signInWithCustomToken;->onPostMessage:[I

    new-array v1, v0, [I

    .line 47
    sget v2, Lo/toStringMap$extraCallback;->colorPrimaryVariant:I

    aput v2, v1, v3

    sput-object v1, Lo/signInWithCustomToken;->extraCallback:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/high16 v2, 0x1010000

    aput v2, v1, v3

    .line 50
    sget v2, Lo/toStringMap$extraCallback;->theme:I

    aput v2, v1, v0

    sput-object v1, Lo/signInWithCustomToken;->ICustomTabsCallback:[I

    new-array v0, v0, [I

    .line 52
    sget v1, Lo/toStringMap$extraCallback;->materialThemeOverlay:I

    aput v1, v0, v3

    sput-object v0, Lo/signInWithCustomToken;->onNavigationEvent:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 5023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/signInWithCustomToken;->arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lo/signInWithCustomToken;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lo/signInWithCustomToken;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lo/signInWithCustomToken;->arg$4:Ljava/lang/String;

    return-void
.end method

.method private static varargs ICustomTabsCallback(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .locals 1

    .line 206
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 207
    array-length p1, p5

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    aget p4, p5, p3

    const/4 v0, -0x1

    .line 208
    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-ne p4, v0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .locals 1

    .line 2315
    sget-object v0, Lo/signInWithCustomToken;->onNavigationEvent:[I

    .line 2316
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 2318
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 2319
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p3, :cond_2

    .line 270
    instance-of p2, p0, Lo/IPostMessageService$Stub$Proxy;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Lo/IPostMessageService$Stub$Proxy;

    .line 3142
    iget p2, p2, Lo/IPostMessageService$Stub$Proxy;->extraCallback:I

    if-eq p2, p3, :cond_2

    .line 275
    :cond_0
    new-instance p2, Lo/IPostMessageService$Stub$Proxy;

    invoke-direct {p2, p0, p3}, Lo/IPostMessageService$Stub$Proxy;-><init>(Landroid/content/Context;I)V

    .line 279
    invoke-static {p2, p1}, Lo/signInWithCustomToken;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 281
    new-instance p1, Lo/IPostMessageService$Stub$Proxy;

    invoke-direct {p1, p2, p0}, Lo/IPostMessageService$Stub$Proxy;-><init>(Landroid/content/Context;I)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    move-object p0, p2

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static onMessageChannelReady(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 1

    .line 247
    invoke-static {p0, p1}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;[I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The style on this component requires your app theme to be "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (or a descendant)."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onMessageChannelReady(Landroid/content/Context;[I)Z
    .locals 3

    .line 234
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 236
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method private static onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 2

    .line 294
    sget-object v0, Lo/signInWithCustomToken;->ICustomTabsCallback:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 295
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x1

    .line 296
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 297
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public static varargs onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .locals 3

    .line 163
    sget-object v0, Lo/toStringMap$newSession;->ThemeEnforcement:[I

    .line 164
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    sget v1, Lo/toStringMap$newSession;->ThemeEnforcement_enforceTextAppearance:I

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 176
    :cond_0
    array-length v1, p5

    if-nez v1, :cond_1

    .line 178
    sget p0, Lo/toStringMap$newSession;->ThemeEnforcement_android_textAppearance:I

    const/4 p1, -0x1

    .line 179
    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    if-eq p0, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-static/range {p0 .. p5}, Lo/signInWithCustomToken;->ICustomTabsCallback(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    move-result v2

    .line 189
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_3

    return-void

    .line 192
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 134
    sget-object v0, Lo/toStringMap$newSession;->ThemeEnforcement:[I

    .line 135
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 137
    sget p2, Lo/toStringMap$newSession;->ThemeEnforcement_enforceMaterialTheme:I

    const/4 p3, 0x0

    .line 138
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 139
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    .line 142
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget p3, Lo/toStringMap$extraCallback;->isMaterialTheme:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    iget p2, p1, Landroid/util/TypedValue;->type:I

    const/16 p3, 0x12

    if-ne p2, p3, :cond_1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    if-nez p1, :cond_1

    .line 1222
    :cond_0
    sget-object p1, Lo/signInWithCustomToken;->extraCallback:[I

    const-string p2, "Theme.MaterialComponents"

    invoke-static {p0, p1, p2}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;[ILjava/lang/String;)V

    .line 2218
    :cond_1
    sget-object p1, Lo/signInWithCustomToken;->onPostMessage:[I

    const-string p2, "Theme.AppCompat"

    invoke-static {p0, p1, p2}, Lo/signInWithCustomToken;->onMessageChannelReady(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 5000
    iget-object v0, p0, Lo/signInWithCustomToken;->arg$1:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lo/signInWithCustomToken;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lo/signInWithCustomToken;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lo/signInWithCustomToken;->arg$4:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->lambda$getInstanceId$1$FirebaseInstanceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
