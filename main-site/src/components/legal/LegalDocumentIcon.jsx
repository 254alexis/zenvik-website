function LegalDocumentIcon({ type, className = "h-7 w-7" }) {
  const paths = {
    terms: (
      <>
        <path d="M7 3h7l4 4v14H7V3Z" />
        <path d="M14 3v5h5M10 12h6M10 16h6" />
      </>
    ),
    privacy: (
      <>
        <path d="M12 3 5.5 6v5.5c0 4 2.6 7.4 6.5 9 3.9-1.6 6.5-5 6.5-9V6L12 3Z" />
        <path d="m9.5 12 1.7 1.7 3.4-3.7" />
      </>
    ),
    refund: (
      <>
        <path d="M5 8h11a4 4 0 0 1 0 8H8" />
        <path d="m9 4-4 4 4 4M12 12h4" />
      </>
    ),
    aup: (
      <>
        <circle cx="12" cy="12" r="9" />
        <path d="M8 8l8 8M16 8l-8 8" />
      </>
    ),
    sla: (
      <>
        <circle cx="12" cy="12" r="9" />
        <path d="M12 7v5l3 2M7 19l-2 2M17 19l2 2" />
      </>
    ),
  }

  return (
    <svg
      className={className}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="1.8"
      strokeLinecap="round"
      strokeLinejoin="round"
      aria-hidden="true"
    >
      {paths[type]}
    </svg>
  )
}

export default LegalDocumentIcon
