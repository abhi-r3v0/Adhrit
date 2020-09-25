.class public final Lo/createFromParcel;
.super Lo/getDescription;
.source ""


# direct methods
.method public constructor <init>(Lo/MediaBrowserCompat$MediaItem$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/getDescription;-><init>(Lo/MediaBrowserCompat$MediaItem$1;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/onSearchResult;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lo/getDescription;->ICustomTabsCallback(Lo/onSearchResult;)V

    .line 30
    iget v0, p1, Lo/onSearchResult;->onRelationshipValidationResult:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lo/onSearchResult;->onRelationshipValidationResult:I

    return-void
.end method
