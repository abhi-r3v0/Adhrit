.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mItalic:Z

.field private mResourceId:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    .line 110
    iput p2, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    .line 111
    iput-boolean p3, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    .line 112
    iput p4, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 116
    iget-object v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .line 128
    iget v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 120
    iget v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    return v0
.end method
