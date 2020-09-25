.class public final Lo/setDropDownWidth;
.super Lo/getPopupBackground;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getPopupBackground<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 35
    sput-object v0, Lo/setDropDownWidth;->onNavigationEvent:Landroid/content/UriMatcher;

    const/4 v1, 0x1

    const-string v2, "com.android.contacts"

    const-string v3, "contacts/lookup/*/#"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lo/setDropDownWidth;->onNavigationEvent:Landroid/content/UriMatcher;

    const-string v3, "contacts/lookup/*"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lo/setDropDownWidth;->onNavigationEvent:Landroid/content/UriMatcher;

    const-string v1, "contacts/#/photo"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lo/setDropDownWidth;->onNavigationEvent:Landroid/content/UriMatcher;

    const-string v1, "contacts/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lo/setDropDownWidth;->onNavigationEvent:Landroid/content/UriMatcher;

    const-string v1, "contacts/#/display_photo"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lo/setDropDownWidth;->onNavigationEvent:Landroid/content/UriMatcher;

    const-string v1, "phone_lookup/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lo/getPopupBackground;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected final synthetic extraCallback(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    check-cast p1, Ljava/io/InputStream;

    .line 1085
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 91
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method protected final synthetic onNavigationEvent(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2059
    sget-object v0, Lo/setDropDownWidth;->onNavigationEvent:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 2074
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    .line 2079
    :cond_0
    invoke-static {p2, p1, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    .line 2065
    :cond_1
    invoke-static {p2, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3079
    invoke-static {p2, v0, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    return-object p2

    .line 2052
    :cond_2
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputStream is null for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2067
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Contact cannot be found"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
