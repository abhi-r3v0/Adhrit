.class public Landroid/support/v4/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/pm/ShortcutInfoCompat$Builder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mDisabledMessage:Ljava/lang/CharSequence;

.field private mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

.field private mId:Ljava/lang/String;

.field private mIntents:[Landroid/content/Intent;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLongLabel:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/pm/ShortcutInfoCompat$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/v4/content/pm/ShortcutInfoCompat;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/content/pm/ShortcutInfoCompat;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$202(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v4/content/pm/ShortcutInfoCompat;)Ljava/lang/CharSequence;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$302(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$502(Landroid/support/v4/content/pm/ShortcutInfoCompat;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Landroid/support/v4/content/pm/ShortcutInfoCompat;)[Landroid/content/Intent;
    .locals 0

    .line 35
    iget-object p0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$602(Landroid/support/v4/content/pm/ShortcutInfoCompat;[Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$702(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object p1
.end method

.method static synthetic access$802(Landroid/support/v4/content/pm/ShortcutInfoCompat;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 35
    iput-object p1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object p1
.end method


# virtual methods
.method addToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 72
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 73
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;)V

    :cond_0
    return-object p1
.end method

.method public getActivity()Landroid/content/ComponentName;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 155
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method toShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 53
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 56
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 59
    :cond_0
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 62
    :cond_1
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 65
    :cond_2
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, p0, Landroid/support/v4/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 68
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method
