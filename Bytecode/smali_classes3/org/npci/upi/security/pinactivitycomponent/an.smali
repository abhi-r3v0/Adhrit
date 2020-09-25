.class public Lorg/npci/upi/security/pinactivitycomponent/an;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lorg/json/JSONArray;

.field private c:Landroid/content/Context;

.field private d:Lorg/npci/upi/security/pinactivitycomponent/x;

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/npci/upi/security/pinactivitycomponent/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/npci/upi/security/pinactivitycomponent/an;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->a:Lorg/json/JSONArray;

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->c:Landroid/content/Context;

    new-instance v0, Lorg/npci/upi/security/pinactivitycomponent/x;

    invoke-direct {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->d:Lorg/npci/upi/security/pinactivitycomponent/x;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->a:Lorg/json/JSONArray;

    const-string v0, "npci_otp_rules.json"

    invoke-static {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/l;->a(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->a:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/an;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const-string v0, "0"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/npci/upi/security/pinactivitycomponent/an;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/npci/upi/security/pinactivitycomponent/am;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sender"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lorg/npci/upi/security/pinactivitycomponent/an;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p3

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const-string p3, "message"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lorg/npci/upi/security/pinactivitycomponent/an;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\\d{"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "otp"

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance p3, Lorg/npci/upi/security/pinactivitycomponent/am;

    invoke-direct {p3}, Lorg/npci/upi/security/pinactivitycomponent/am;-><init>()V

    invoke-virtual {p3, p2}, Lorg/npci/upi/security/pinactivitycomponent/am;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p2

    if-ltz p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/npci/upi/security/pinactivitycomponent/am;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    :cond_3
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->d:Lorg/npci/upi/security/pinactivitycomponent/x;

    const-string v1, "msgID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/x;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->e:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b(Lorg/npci/upi/security/pinactivitycomponent/am;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/am;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/an;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/an;->c(Lorg/npci/upi/security/pinactivitycomponent/am;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/an;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lorg/npci/upi/security/pinactivitycomponent/am;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/am;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->d:Lorg/npci/upi/security/pinactivitycomponent/x;

    const-string v1, "msgID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/npci/upi/security/pinactivitycomponent/x;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lorg/npci/upi/security/pinactivitycomponent/an;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->d:Lorg/npci/upi/security/pinactivitycomponent/x;

    invoke-virtual {v0, v1, p1}, Lorg/npci/upi/security/pinactivitycomponent/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(IJ)Lorg/npci/upi/security/pinactivitycomponent/am;
    .locals 11

    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "_id"

    const-string v1, "address"

    const-string v3, "body"

    const-string v4, "date"

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "date > ?"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "date DESC"

    const/4 v7, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    const-string v10, ""

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v10, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v9, v1

    move-object v1, v5

    move-object v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p3, v1}, Lorg/npci/upi/security/pinactivitycomponent/an;->a(ILjava/lang/String;Ljava/lang/String;)Lorg/npci/upi/security/pinactivitycomponent/am;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/npci/upi/security/pinactivitycomponent/am;->c(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/npci/upi/security/pinactivitycomponent/an;->b(Lorg/npci/upi/security/pinactivitycomponent/am;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p3}, Lorg/npci/upi/security/pinactivitycomponent/an;->a(Lorg/npci/upi/security/pinactivitycomponent/am;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p3

    :cond_2
    if-eqz p2, :cond_4

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    nop

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v7

    :goto_0
    :try_start_2
    sget-object p3, Lorg/npci/upi/security/pinactivitycomponent/an;->b:Ljava/lang/String;

    invoke-static {p3, p1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_4

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v7, p2

    :goto_1
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1

    :catch_3
    move-object p2, v7

    :goto_2
    if-eqz p2, :cond_4

    :goto_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v7
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Lorg/npci/upi/security/pinactivitycomponent/am;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->a:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/npci/upi/security/pinactivitycomponent/an;->a:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, p3, p2, v2}, Lorg/npci/upi/security/pinactivitycomponent/an;->a(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/npci/upi/security/pinactivitycomponent/am;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    sget-object p2, Lorg/npci/upi/security/pinactivitycomponent/an;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/npci/upi/security/pinactivitycomponent/ad;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1
.end method

.method public a(Lorg/npci/upi/security/pinactivitycomponent/am;)V
    .locals 1

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/am;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/am;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/an;->c(Lorg/npci/upi/security/pinactivitycomponent/am;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lorg/npci/upi/security/pinactivitycomponent/an;->c(Ljava/lang/String;)V

    return-void
.end method
